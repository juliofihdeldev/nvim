--- @class DateInserter
local M = {}

--- @return string
local function get_current_date()
  return os.date '%Y-%m-%d %H:%M:%S'
end

function M.insert_date()
  local date = get_current_date()
  vim.api.nvim_put({ date }, 'c', true, true)
end

function M.setup()
  vim.api.nvim_create_user_command('JJF', M.insert_date, {})
end

return M
