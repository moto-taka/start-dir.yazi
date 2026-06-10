local M = {}

function M:entry()
  local dir = os.getenv("YAZI_START_DIR")
  if dir then
    ya.emit("cd", { dir })
  end
end

return M
