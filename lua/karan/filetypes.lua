-- Set the filetype for specific conditions
vim.cmd[[
  autocmd BufNewFile,BufRead *.conf lua set_filetype_registry()
]]

-- Define the Lua function to set the filetype
function set_filetype_registry()
  local bufnr = vim.api.nvim_get_current_buf()
  local file_lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)

  for _, line in ipairs(file_lines) do
    if string.find(line, "Registry") then
      vim.api.nvim_buf_set_option(bufnr, 'filetype', 'registry')
      return
    end
  end
end

