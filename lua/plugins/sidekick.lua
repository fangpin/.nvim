-- lua/plugins/sidekick.lua
return {
  "folke/sidekick.nvim",
  event = "VeryLazy",
  opts = {
    cli = {
      tools = {
        coco = {
          cmd = { "coco" },
          title = "Coco AI",
        },
      },
    },
  },
}
