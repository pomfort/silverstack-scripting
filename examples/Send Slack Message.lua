-- sst: post-step
-- MIT License. See LICENSE.txt

function onFinish(assets, resources, workingPath, success)
  local chan = sst.utils.slack.getAvailableChannels()[1]

  if chan == nil then
    error "No slack channel configured. Go to Application Settings > Accounts to add one."
  end

  if not success then
    sst.utils.slack.sendMessage(chan, "Job failure")
    return
  end

  local names = {}
  for _, asset in ipairs(assets) do
    if asset:isClip() then
      table.insert(names, asset:metadata():getClipName())
    end
  end

   sst.utils.slack.sendMessage(chan, "Job successfully ran for clips:\n" .. table.concat(names, ", "))
end
