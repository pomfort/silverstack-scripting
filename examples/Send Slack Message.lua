-- sst: post-step
-- MIT License. See LICENSE.txt
-- Use case: Use the Lua API to send Slack messages

function onFinish(assets, resources, workingPath, success)
  -- Get the first available Slack channel
  local chan = sst.utils.slack.getAvailableChannels()[1]

  if chan == nil then
    error "No slack channel configured. Go to Application Settings > Accounts to add one."
  end

  if not success then
    sst.utils.slack.sendMessage(chan, "Job failure")
    return
  end

  local names = {}
  -- Iterate over every asset and skip the index in the loop
  for _, asset in ipairs(assets) do
    if asset:isClip() then
      -- If the asset is a clip, insert its clip name into the table "names"
      table.insert(names, asset:metadata():getClipName())
    end
  end

  -- Sends a message into the first available channel
  -- Table.concat: Combines all elements of table "names" into one string, separated with a comma + space
   sst.utils.slack.sendMessage(chan, "Job successfully ran for clips:\n" .. table.concat(names, ", "))
end
