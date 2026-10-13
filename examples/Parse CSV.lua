-- sst: ingest
-- MIT License. See LICENSE.txt
-- Use case: Import clip metadata from CSV file (e.g., enable metadata roundtrip with Silverstack's "Generic CSV Metadata")

-- This script requires "luarocks"
-- Ensure you have the latest Lua installation: brew upgrade lua
-- Install it via terminal: luarocks install ftcsv

local ftcsv = require("ftcsv")

function sortByHeader(array, header)
  local dict = {}
  for _, v in ipairs(array) do
    local key = v[header] -- Corresponds to column "Name" with the key being the clip name
    if key ~= nil then
      dict[key] = v -- Contains an entire row of metadata
      dict[key][header] = nil -- Set name column to nil
    end
  end
  return dict -- Contains a dictionary containing dictionaries that represent rows with metadata for each clip
end

--- Path to the CSV that should be parsed
local csvPath = "/Path/To/The/Sample.csv"

-- Parse the CSV file using the package installed above
local csvFile = ftcsv.parse(csvPath, {delimiter= ";"})

-- Sort the CSV by the (clip) name column in the CSV
local csvByClipName = sortByHeader(csvFile, "Name")

function onStampVideo(videoClip, _, _)
  local md = videoClip:metadata()
  local clipName = md:getClipName(false)
  local csvRow = csvByClipName[clipName] -- Single dictionary/row with clip metadata
  if csvRow ~= nil then
    -- Set and extend the metadata fields as required: Their key corresponds to the CSV's column name
    md:setCustom1(csvRow["Scene"])
    md:setCustom2(csvRow["Shot"])
    md:setCustom3(csvRow["Take"])
  end
end