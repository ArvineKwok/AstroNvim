return {
  {
    "mechatroner/rainbow_csv",
    config = function() end,
    event = "BufEnter",
  },
  -- {
  --   "folke/flash.nvim",
  --   opts = {
  --     incremental = true,
  --     exclude = {
  --       "notify",
  --       "cmp_menu",
  --       "noice",
  --       "flash_prompt",
  --       "neo-tree",
  --       function(win)
  --         -- exclude non-focusable windows
  --         return not vim.api.nvim_win_get_config(win).focusable
  --       end,
  --     },
  --     search = {
  --       forward = true,
  --       multi_window = false,
  --       wrap = false,
  --       incremental = true,
  --     },
  --   },
  --   keys = {
  --     { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
  --     { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  --     { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
  --     { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  --     { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  --   },
  -- },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    config = function() require("telescope").load_extension "file_browser" end,
  },
  -- {
  --   -- 长按j，k加速滑动
  --   "rhysd/accelerated-jk",
  --   event = "VeryLazy",
  --   keys = {
  --     { "j", "<Plug>(accelerated_jk_gj)" },
  --     { "k", "<Plug>(accelerated_jk_gk)" },
  --   },
  -- },
  -- {
  --   "linux-cultist/venv-selector.nvim",
  --   dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
  --   opts = {
  --     dap_enabled = true,
  --     -- Your options go here
  --     -- name = "venv",
  --     -- auto_refresh = false
  --   },
  --   event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  --   keys = {
  --     -- Keymap to open VenvSelector to pick a venv.
  --     { "<leader>vs", "<cmd>VenvSelect<cr>" },
  --     -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
  --     { "<leader>vc", "<cmd>VenvSelectCached<cr>" },
  --   },
  -- },
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    config = function() require("lspsaga").setup {} end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },
  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope", "TodoLocList", "TodoQuickFix" },
    event = "User AstroFile",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = {},
    -- keys = {
    --   { "]c", function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
    --   { "[c", function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
    --   { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo (Trouble)" },
    --   { "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
    --   { "<leader>xs", "<cmd>TodoTelescope<cr>", desc = "Todo" },
    --   { "<leader>xS", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
    -- },
  },
  -- {
  --   "folke/trouble.nvim",
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  --   opts = {
  --     -- your configuration comes here
  --     -- or leave it empty to use the default settings
  --     -- refer to the configuration section below
  --   },
  -- },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     indent = {
  --       char = "│",
  --       tab_char = "│",
  --     },
  --     scope = { enabled = true },
  --     exclude = {
  --       filetypes = {
  --         "help",
  --         "alpha",
  --         "dashboard",
  --         "neo-tree",
  --         "Trouble",
  --         "trouble",
  --         "lazy",
  --         "mason",
  --         "notify",
  --         "toggleterm",
  --         "lazyterm",
  --       },
  --     },
  --   },
  --   main = "ibl",
  -- },
  -- { "echasnovski/mini.animate", event = "VeryLazy", config = true },
  -- { "echasnovski/mini.bracketed", event = "User AstroFile", config = true },
  -- TODO: key map conflict
  -- [[
  -- Target	Mappings	Lua function
  -- Buffer	[B [b ]b ]B	MiniBracketed.buffer()
  -- Comment block	[C [c ]c ]C	MiniBracketed.comment()
  -- Conflict marker	[X [x ]x ]X	MiniBracketed.conflict()
  -- Diagnostic	[D [d ]d ]D	MiniBracketed.diagnostic()
  -- File on disk	[F [f ]f ]F	MiniBracketed.file()
  -- Indent change	[I [i ]i ]I	MiniBracketed.indent()
  -- Jump from jumplist inside current buffer	[J [j ]j ]J	MiniBracketed.jump()
  -- Location from location list	[L [l ]l ]L	MiniBracketed.location()
  -- Old files	[O [o ]o ]O	MiniBracketed.oldfile()
  -- Quickfix entry from quickfix list	[Q [q ]q ]Q	MiniBracketed.quickfix()
  -- Tree-sitter node and parents	[T [t ]t ]T	MiniBracketed.treesitter()
  -- Undo states from specially tracked linear history	[U [u ]u ]U	MiniBracketed.undo()
  -- Window in current tab	[W [w ]w ]W	MiniBracketed.window()
  -- Yank selection replacing latest put region	[Y [y ]y ]Y	MiniBracketed.yank()
  -- ]]
  { "echasnovski/mini.cursorword", event = "VeryLazy", config = true },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = true,
  },
  --[[
  --    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls
  --]]
  {
    "abcdefg233/rainbowcursor.nvim",
    cmd = { "RainbowCursor" },
    config = true,
    event = "BufEnter",
    dependencies = {
      "abcdefg233/hcutil.nvim",
    },
  },
  -- {
  --   "smjonas/inc-rename.nvim",
  --   event = "VeryLazy",
  --   config = function()
  --     require("inc_rename").setup {
  --       input_buffer_type = "dressing",
  --     }
  --   end,
  -- },
  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     -- add any options here
  --   },
  --   dependencies = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     "MunifTanjim/nui.nvim",
  --     -- OPTIONAL:
  --     --   `nvim-notify` is only needed, if you want to use the notification view.
  --     --   If not available, we use `mini` as the fallback
  --     "rcarriga/nvim-notify",
  --   },
  -- },
  {
    "VidocqH/lsp-lens.nvim",
    event = "LspAttach",
    config = {},
  },
  -- {
  --   "LudoPinelli/comment-box.nvim",
  --   event = "User AstroFile",
  --   opts = {},
  -- },
}
