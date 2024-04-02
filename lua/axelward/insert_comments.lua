function CreateNote()
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. '// Note(Axel): ' .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
end

function CreateTodo()
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. '// TODO(Axel): ' .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
end
