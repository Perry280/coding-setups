vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.cursorline = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.signcolumn = "yes:1"
vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
    virtual_text = false,
    float = true,
    update_in_insert = true,
})

vim.g.have_nerd_font = true

vim.opt.scrolloff = 10

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.shell = "pwsh.exe"
vim.opt.shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;$PSStyle.Formatting.Error = '';$PSStyle.Formatting.ErrorAccent = '';$PSStyle.Formatting.Warning = '';$PSStyle.OutputRendering = 'PlainText';"
vim.opt.shellredir = "2>&1 | Out-File -Encoding utf8 %s; exit $LastExitCode"
vim.opt.shellpipe = "2>&1 | Out-File -Encoding utf8 %s; exit $LastExitCode"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>t", ":terminal<CR>")
vim.keymap.set("n", "<C-S>", "<cmd>wa<CR>")
vim.keymap.set("n", "<C-Q>", "<cmd>xa<CR>")

require("config.lazy")

vim.cmd[[colorscheme tokyonight-night]]
