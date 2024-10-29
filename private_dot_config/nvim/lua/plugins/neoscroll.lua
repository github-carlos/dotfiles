return {
  "karb94/neoscroll.nvim",
  config = function()
    require("neoscroll").setup({
      -- Optional settings
      easing_function = "quadratic", -- Default easing function
      hide_cursor = true, -- Hide cursor while scrolling
      stop_eof = true, -- Stop at the end of file when scrolling down
      respect_scrolloff = false, -- Scroll smoothly even when scrolloff is set
      cursor_scrolls_alone = true, -- Cursor will keep scrolling even when window cannot scroll further
    })
  end,
}
