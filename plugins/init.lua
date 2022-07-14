return {
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

   -- Control P
   ["ctrlpvim/ctrlp.vim"] = {
      cmd = {
         "CtrlP",
         "CtrlPBuffer",
         "CtrlPMixed"
      },
   },

   -- Haskell formatter
   ["alx741/vim-stylishask"] = {
      after = "nvim-lspconfig",
      cmd = {
         "Stylishask",
         "StylishaskToggle"
      },
   }
}
