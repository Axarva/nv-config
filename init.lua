local set_spacing = function(padding_amount, margin_amount)
    -- local command = string.format('kitty @ set-spacing padding=%d margin=%d', padding_amount, margin_amount)
    -- vim.schedule(function()
    --     local handle = io.popen(command)
    --     if handle ~= nil then
    --         handle:close()
    --     end
    -- end)
  vim.schedule(function()
      require("plenary.job"):new({
          detached = true,
          command = "kitty",
          args = {
              "@", "set-spacing",
              "padding=" .. padding_amount,
              "margin=" .. margin_amount,
          },
          cwd = "/usr/bin/",
          }):start()
  end)
end

local kitty_test = vim.api.nvim_create_augroup("KittyPadding", {clear = true})

vim.api.nvim_create_autocmd("VimEnter", {
    group = kitty_test,
    callback = function()
        set_spacing(0, 0)
    end
})

vim.api.nvim_create_autocmd("VimLeavePre", {
    group = kitty_test,
    callback = function()
        set_spacing(15, 0)
    end
})

