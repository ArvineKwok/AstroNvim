return {
  {
    "mechatroner/rainbow_csv",
    config = function() end,
  },
  {
    "folke/flash.nvim",
    opts = {
      incremental = true,
      exclude = {
        "notify",
        "cmp_menu",
        "noice",
        "flash_prompt",
        "neo-tree",
        function(win)
          -- exclude non-focusable windows
          return not vim.api.nvim_win_get_config(win).focusable
        end,
      },
      search = {
        forward = true,
        multi_window = false,
        wrap = false,
        incremental = true,
      },
    },
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    config = function() require("telescope").load_extension "file_browser" end,
  },
}
