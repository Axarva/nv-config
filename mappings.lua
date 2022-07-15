local M = {}

M.ctrlp = {
   n = {
      ["<C-p>"] = {"<cmd> Telescope find_files <CR>", "Fuzzy find files"},
   },
}
M.ctrlo = {
   n = {
      ["<C-o>"] = {"<cmd> Telescope media_files <CR>", "Fuzzy find media files"},
   },
}

return M
