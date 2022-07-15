local M = {}

M.ctrlp = {
   n = {
      ["<C-p>"] = {"<cmd> Telescope find_files <CR>", "Fuzzy find files"},
   },
}

return M
