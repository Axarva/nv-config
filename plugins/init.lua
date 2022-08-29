return {
  --your custom plugins section

  ['folke/which-key.nvim'] = {
    disable = false
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
  },
   -- autoclose tags in html, jsx etc
   ["windwp/nvim-ts-autotag"] = {
      ft = { "html", "javascriptreact" },
      after = "nvim-treesitter",
      config = function()
         require("custom.plugins.smolconfigs").autotag()
      end,
   },

   -- dim inactive windows
   ["andreadev-it/shade.nvim"] = {
      module = "shade",
      config = function()
         require("custom.plugins.smolconfigs").shade()
      end,
   },

   -- Discord thing.
   ["andweeb/presence.nvim"] = {
      config = function()
         require("custom.plugins.smolconfigs").presence()
      end,
   },
   
   -- Media file preview
   ["nvim-telescope/telescope-media-files.nvim"] = {
      module = "telescope",
   },

   -- Universal formatter
    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
    }


}
