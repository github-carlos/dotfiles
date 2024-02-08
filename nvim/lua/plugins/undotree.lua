return {
  "mbbill/undotree",
  config = function()
    vim.cmd("let g:undotree_SetFocusWhenToggle = 1")
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
  end,
}
