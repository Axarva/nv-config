local M = {}

M.plugins = {

   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },

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

M.mappings = require "custom.mappings"

return M

