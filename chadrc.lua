local M = {}

M.plugins = {

   override = {
      ["nvim-telescope/telescope.nvim"] = {
          extensions = {
              media_files = {
                filetypes = {"png", "webp", "jpg", "jpeg"},
                find_cmd = "rg"
              },
          },
          extensions_list = {"themes", "terms", "media_files"},
      }
   },

   user = require "custom.plugins",

}

M.ui = {
  theme = "aquarium",
}

M.mappings = require "custom.mappings"

return M

