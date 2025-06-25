-- Set the <leader> key to space
vim.g.mapleader = ' '

-- Save the current file with <leader>w
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {
    desc = 'Save'
})

-- Quit the current window with <leader>q
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>', {
    desc = 'Quit'
})

-- Format using Prettier with <leader>p
vim.keymap.set('n', '<leader>p', '<cmd>silent !~/.local/share/nvim/mason/bin/prettier --write %<cr>', {
    desc = 'Format with Prettier'
})


-- Toggle the NvimTree (file explorer) with <leader>e
vim.keymap.set('n', '<leader>e', function()
    local view = require('nvim-tree.view')
    if view.is_visible() then
        if vim.bo.filetype == 'NvimTree' then
            -- Inside the tree → close it
            vim.cmd('NvimTreeClose')
        else
            -- Outside the tree, tree is open → focus it
            vim.cmd('NvimTreeFocus')
        end
    else
        -- Tree is closed → open it
        vim.cmd('NvimTreeOpen')
    end
end, {
    desc = 'Smart toggle file explorer'
})

-- Load Telescope built-in functions
local builtin = require('telescope.builtin')
-- Find files with <leader>f
vim.keymap.set('n', '<leader>ff', builtin.find_files, {
    desc = 'Find Files'
})
-- Live grep (search text) with <leader>fg
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {
    desc = 'Live Grep'
})
-- List open buffers with <leader>fb
vim.keymap.set('n', '<leader>fb', builtin.buffers, {
    desc = 'List Buffers'
})
-- Show help tags with <leader>fh
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {
    desc = 'Help Tags'
})
