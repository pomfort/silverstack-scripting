-- sst: post-step
-- MIT License. See LICENSE.txt

function onFinish(assets, resources, workingPath, success)
  local function url_encode(s)
    -- Minimal URL-encoding (good enough for tests)
    s = tostring(s)
    s = s:gsub("\n", "\r\n")
    s = s:gsub("([^%w%-%_%.%~ ])", function(c)
      return string.format("%%%02X", string.byte(c))
    end)
    return s:gsub(" ", "%%20")
  end

  local to = "yourmail@yourserver.com"
  local subject = "Test from Lua"
  local body = "Hello!\n\nThis draft was opened by a post step script.\n"

  local url = "mailto:" .. url_encode(to)
    .. "?subject=" .. url_encode(subject)
    .. "&body=" .. url_encode(body)

  -- Use `open` to hand off to the default mail client
  os.execute('open "' .. url ..'"')
end
