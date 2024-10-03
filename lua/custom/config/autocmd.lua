vim.diagnostic.config {
  float = { border = 'rounded' },
}

-- Remove transparency
-- vim.opt.pumblend = 0

-- Change color of floating borders
vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'TelescopeBorder' })
vim.api.nvim_set_hl(0, 'FloatTitle', { link = 'TelescopeTitle' })
vim.api.nvim_set_hl(0, 'LspInfoBorder', { link = 'TelescopeBorder' })
vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' })

-- Open Obsidian Folder
vim.api.nvim_create_user_command('Obsidian', function()
  require('telescope.builtin').find_files {
    cwd = '~/4prndz/notes',
    find_command = { 'rg', '--files', '--iglob', '!.obsidian', '--iglob', '!.trash' },
  }
end, {})
