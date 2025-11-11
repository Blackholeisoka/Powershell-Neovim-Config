require("config.lazy")
require("custom")

-- Charger nvim-web-devicons immédiatement
local ok, devicons = pcall(require, "nvim-web-devicons")
if ok then
  devicons.setup({ default = true })
end

local prettier_cmd = "C:\\Users\\papas\\AppData\\Roaming\\npm\\prettierd.cmd"

-- Tes couleurs personnalisées
vim.cmd([[highlight Normal guibg=#000000 guifg=#C0C0C0]])
vim.cmd([[highlight Comment guifg=#7A7A7A gui=italic]])
vim.cmd([[highlight Keyword guifg=#A0C0FF gui=bold]])
vim.cmd([[highlight Function guifg=#FFDFA0]])
vim.cmd([[highlight String guifg=#C0FFB0]])
vim.cmd([[highlight Type guifg=#FFA0A0]])
vim.cmd([[highlight Number guifg=#FFFFA0]])
vim.cmd([[highlight Constant guifg=#FFC0C0]])
vim.cmd([[highlight Identifier guifg=#FFFFFF]])

vim.cmd([[language fr_FR.UTF-8]])

-- Autoformat Prettierd (asynchrone)
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.json", "*.css", "*.scss", "*.html" },
  callback = function()
    vim.fn.jobstart({prettier_cmd, "--write", vim.fn.expand("%")})
  end,
})

vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>:lua vim.fn.jobstart({prettier_cmd, '--write', vim.fn.expand('%')})<CR>", { noremap=true, silent=true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>:lua vim.fn.jobstart({prettier_cmd, '--write', vim.fn.expand('%')})<CR>a", { noremap=true, silent=true })


-- Live Server commands
vim.api.nvim_create_user_command("LiveServerStart", function()
  local cwd = vim.fn.getcwd()
  local cmd = string.format('start /b live-server "%s" --port=5500 --no-browser >nul 2>&1', cwd)
  vim.fn.system(cmd)
  vim.cmd([[!start "" "http://127.0.0.1:5500"]])
end, {})

vim.api.nvim_create_user_command("LiveServerStop", function()
  print("Pour arrêter le serveur, fermez simplement le terminal ou Ctrl+C dans la fenêtre live-server")
end, {})

