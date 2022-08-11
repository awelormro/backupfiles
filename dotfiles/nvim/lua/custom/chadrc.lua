-- Just an example, supposed to be placed in /lua/custom/

local M = {}
-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
local override = require "custom.override"

M.ui = {
  theme = "chadracula",
}
local pluginConfs = require "custom.plugins.configs"
M.plugins = {
   override = {
     ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
     ["goolord/alpha-nvim"] = override.alpha,
   },
   user = require "custom.plugins"
}

-- chadrc
M.mappings = require "custom.mappings"

vim.g.luasnippets_path = "~/Plantillas/snippets"
vim.g.auto_session_enabled = false
vim.g.vimtex_compiler_latexmk = {options = {'-pdf', '-shell-escape', '-verbose', '-file-line-error', '-synctex=1', '-interaction=nonstopmode'}
}

vim.g.db_ui_env_variable_url = 'DATABASE_URL'
vim.g.db_ui_env_variable_name = 'DATABASE_NAME'
vim.g.vimtex_view_method = 'zathura'

vim.g.vimwiki_list = {
  {path= '~/vimwiki/', syntax= 'markdown', ext= '.md'}
}

local db = require('dashboard')
db.custom_header = {

      -- "           ▄ ▄                   ",
      -- "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      -- "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      -- "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      -- "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      -- "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄ ",
      -- "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █ ",
      -- "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █ ",
      -- "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█     ",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠠⠤⠒⠒⠒⠒⠒⠤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⢀⡲⢋⠝⠋⣛⣳⡄⠀⠀⠀⠀⠀⠀⠉⠓⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⢀⠠⣴⠗⢀⠥⠂⢁⠤⠤⠤⠁⠀⠀⠀⠀⠀⠀⠀⠀⣛⠛⠉⠗⠒⠲⢤⣀⠀",
      "⠰⠃⠐⠀⠋⡠⠀⠮⠤⠤⠤⠤⡤⡄⠀⠀⠀⠀⠀⠀⢠⣽⠄⠀⠀⠀⠀⠀⢸⡆",
      "⠀⠜⠀⠀⠈⠀⢠⣤⣔⣒⡒⠒⠂⠁⠀⡀⢀⣀⣤⣶⣿⡟⠀⠀⠀⠀⠀⢀⡼⠀",
      "⠈⠀⠀⠀⠀⣰⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠉⠁⠀⠀⠀⢄⡴⠋⠀⠀",
      "⠀⠀⠀⠀⣰⠋⠀⠀⠀⠈⠙⠛⠛⠛⠛⠋⠉⠀⠀⠀⠀⢀⣠⣴⡊⠁⠀⠀⠀⠀",
      "⠀⡠⠐⠉⢸⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣤⣶⣿⣿⣿⡻⡄⠀⠀⠀⠀",
      "⠀⠁⠀⠀⣿⢹⣿⣿⣿⣶⣦⣶⣶⣶⣶⣶⣙⠋⠴⠛⣿⢛⡿⠬⠃⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠈⠘⠹⣿⣿⠛⠛⠛⢿⡇⠀⠉⠀⠘⠉⢰⣯⡊⠙⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠈⠱⡄⠀⠀⠘⠃⠀⠀⠀⠀⠠⠛⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⢲⣄⠀⠒⠂⠀⣀⢴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⣀⣀⣀⣀⣈⠀⢻⣿⣶⣴⣾⡟⢸⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⢀⡎⠀⢀⣠⡤⠂⢠⠈⢿⣿⡿⣿⠃⠀⠙⣀⣀⣀⡀⠀⠙⣄⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⢠⠉⠉⢇⠀⠈⡇⠘⣏⠀⡿⡰⠀⠀⢀⠛⠛⠻⣆⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⢸⠉⠉⠉⠗⠒⢿⡀⠸⡈⣠⠧⠞⠉⡏⠉⠉⠉⢹⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠸⠀⠀⠀⠀⠀⠀⠁⠀⠉⠉⠀⠀⠈⠀⠀⠀⠀⠸⠀⠀⠀⠀⠀⠀",
}

db.custom_center = {
  { icon = '', desc = '    New file       :enew  ', action = 'enew'}, --correct if you don't icon filed
  { icon = '', desc = '    Find files     spc f f', action = 'Telescope find_files' }, --correct if you don't action filed
  { icon = '', desc = '    Find session   F2     ', action ='Telescope possession list'},      --correct if you don't action and icon filed
  { icon = '', desc = '    Change theme   spc t h', action = 'Telescope themes' },
  { icon = '', desc = '    Recent files   spc f o', action = 'Telescope oldfiles'}, --correct if you don't icon filed
  { icon = '', desc = '    Quit           q      ', action = 'q' }, --correct if you don't action filed
}

db.custom_footer = {"Born to lose, live to win"}

vim.opt.mouse="a"
vim.opt.mousemodel="popup"

vim.g.rightclick_normal_items =  {'save' , 'quit' , 'undo' , 'redo' , 'paste'}
vim.g.rightclick_normal_macros = {':w^M' , ':q^M' , 'u'    , '^R'   , 'p'    }

vim.g.rightclick_visual_items =  {'copy' , 'cut' , 'paste'}
vim.g.rightclick_visual_macros = {'y'    , 'd'   , 'p'    }


return M
