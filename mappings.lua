local M = {}

M.ctrlp = {
   n = {
      ["<C-p>"] = {"<cmd> CtrlP <CR>", "Fuzzy find files"},
   },
}

M.stylishask = {
   n = {
      ["<C-o>"] = {"<cmd> Stylishask <CR>", "Format Haskell Code"},
   },
}


return M
