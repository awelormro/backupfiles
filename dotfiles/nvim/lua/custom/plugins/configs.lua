-- custom/plugins/configs.lua file

local M = {}

M.treesitter = {
   ensure_installed = {
      "lua",
      "html",
      "css",
      "norg",

   },
   highlight = {
     enable = true,
   },
}

M.telescope = {
    extensions_list = {"possession","project","file_browser"},
  }

return M
