---@type LazySpec
return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {},
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    -- dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  },
  {
    "augmentcode/augment.vim",
  },
  { -- override blink.cmp plugin
    "Saghen/blink.cmp",
    opts = {
      keymap = {
        ["<Tab>"] = { "accept", "fallback" },
      },
    },
  },
  {
    "al1-ce/just.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- async jobs
      "nvim-telescope/telescope.nvim", -- task picker (optional)
      "rcarriga/nvim-notify", -- general notifications (optional)
      "j-hui/fidget.nvim", -- task progress (optional)
      "al1-ce/jsfunc.nvim", -- extension library
    },
    config = true,
    keys = {
      { "<Leader>js", ":JustSelect<cr>", desc = "Just Select" },
      { "<Leader>jr", ":Just<cr>", desc = "Just Run" },
    },
  },
}
