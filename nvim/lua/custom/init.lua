vim.g.tokyonight_style = "moon"
vim.g.tokyonight_transparent = false
vim.g.tokyonight_enable_italic = true
vim.cmd([[colorscheme tokyonight]])

require('nvim-web-devicons').setup { default = true }

require('nvim-tree').setup {
  renderer = {
    icons = {
      show = { file = true, folder = true, folder_arrow = true, git = true },
    },
  },
}

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    section_separators = {'', ''},
    component_separators = {'', ''},
  }
}

vim.api.nvim_create_user_command('PxToRem', function()
  local line = vim.api.nvim_get_current_line()
  local converted = line:gsub("(%d+)px", function(px)
    return tonumber(px) / 16 .. "rem"
  end)
  vim.api.nvim_set_current_line(converted)
end, {})

vim.api.nvim_create_user_command('RemToPx', function()
  local line = vim.api.nvim_get_current_line()
  local converted = line:gsub("([%d%.]+)rem", function(rem)
    return (tonumber(rem) * 16) .. "px"
  end)
  vim.api.nvim_set_current_line(converted)
end, {})

