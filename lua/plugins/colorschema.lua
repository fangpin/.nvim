return {
  -- Add the onedarkpro.nvim plugin
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Load this theme first
    config = function()
      -- Optionally configure OneDarkPro
      require("onedarkpro").setup({
        options = {
          cursorline = true, -- Enable cursor line
          transparency = false, -- Disable transparency
        },
      })
    end,
  },
  { "morhetz/gruvbox" },
}
