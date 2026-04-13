-- sst: post-step
-- MIT License. See LICENSE.txt
-- Use case: Create an email draft with job information that can be checked before sending it

function onFinish(_, _, workingPath, success)
  local to = "example@example.com"
  local subject = "Mail from Silverstack Script"
  -- Check if success is true and set the string to "Successful", otherwise use "Failed"
  local status = success and "Successful" or "Failed"
  local body =
    "Hello!\n\nThis draft was opened by a post step script.\n" ..
    "Working path: " .. workingPath .. "\n" ..
    "Result: " .. status .. "\n"

  local url = "mailto:" .. encodeUrl(to)
    .. "?subject=" .. encodeUrl(subject)
    .. "&body=" .. encodeUrl(body)

  -- Use "open" to hand over to the default email client
  os.execute('open "' .. url ..'"')
end

-- Minimal URL-encoding, so strings can be safely embedded in a mailto: URL
function encodeUrl(s)
  -- Ensure the input is a string
  s = tostring(s)
  -- Converts line endings for mailto body formatting
  s = s:gsub("\n", "\r\n")
  -- Matches any character that is not allowed for URL
  s = s:gsub("([^%w%-%_%.%~ ])", function(c)
    -- "string.byte(c)" gets the ASCII value of the character
    -- "string.format("%%%02X", ...)" formats it as a percent sign followed by a two-digit uppercase hex value (e.g., "@" to "%40")
    return string.format("%%%02X", string.byte(c))
  end)
  -- Replaces spaces with "%20"
  return s:gsub(" ", "%%20")
end