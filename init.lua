vim.cmd [[
augroup kitty_mp
    autocmd!
    au VimLeave * :silent !kitty @ set-spacing padding=15
    au VimEnter * :silent !kitty @ set-spacing padding=0
augroup END
]]

