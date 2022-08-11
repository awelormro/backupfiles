return {
  ["goolord/alpha-nvim"] = {
    -- disable = false,
  },
  ["lervag/vimtex"]={},
  ["tpope/vim-surround"]={},
  ["tpope/vim-repeat"]={},
  ["folke/zen-mode.nvim"]={},
  ["nvim-neorg/neorg"]={
    ft = "norg",
    after = "nvim-treesitter", -- You may want to specify Telescope here as well
    config = function()
        require('neorg').setup {
            -- ...
        }
    end
  },
  ["kvngvikram/rightclick-macros"]={},
  ["nvim-telescope/telescope-file-browser.nvim"]={},
  ["nvim-telescope/telescope-project.nvim"]={},
  ["jedrzejboczar/possession.nvim"]={
    config = function ()
      require('possession').setup {

      }
    end
  },
 ["nvim-telescope/telescope.nvim"]={
    module = "telescope"
  },
  ['MunifTanjim/nui.nvim']={},
  ['sudormrfbin/cheatsheet.nvim']={},
  ['romgrk/todoist.nvim']={},
  ['glepnir/dashboard-nvim']={},
  ["wthollingsworth/pomodoro.nvim"]={
    config = function()
    require('pomodoro').setup{
      time_work = 25,
      time_break_short = 5,
      time_break_long = 20,
      timers_to_long_break = 4
      }
    end
  },
  -- [""]={},
  ["junegunn/vim-easy-align"]={},
  ["charleseidsness/vim-python-sql"]={},
  ["tpope/vim-dadbod"]={},
  ["kristijanhusak/vim-dadbod-ui"]={},
}

