-- lua/custom/mappings 
local M = {}

-- add this table only when you want to disable default keys
M.telescope = {
  n = {
     ["<F1>"] = {":lua require'telescope'.extensions.project.project{}<CR>", "Open Telescope project"},
  ["<F2>"] = {":Telescope possession list<CR>", "Shows sessions list"},
  },

  i = {
    -- more keys!
  }
}
M.EasyAlign = {
  n = {
    ["ga"]={"<Plug>(EasyAlign)", "EasyAlign start"}
  },
  x ={
    ["ga"]={"<Plug>(EasyAlign)", "EasyAlign start"}
  },
}
M.possession = {
  n ={
    ["<leader>c"] = {":PossessionSave!<CR>","Save session"},
  },
}

return M
