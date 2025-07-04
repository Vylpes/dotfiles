-- Imports
local U = require("utils")

-- Neovim Alias
local exec = vim.api.nvim_exec -- execute Vimscript
local api = vim.api -- neovim commands
local autocmd = vim.api.nvim_create_autocmd -- execute autocommands
local set = vim.opt -- global options
local cmd = vim.cmd -- execute Vim commands

-- Configs
vim.g.mapleader = " "

set.compatible = false
set.showmatch = true
set.ignorecase = true
set.mouse = "v"
set.hlsearch = true
set.incsearch = true
set.tabstop = 4
set.softtabstop = 4
set.expandtab = true
set.shiftwidth = 4
set.autoindent = true
set.number = true
set.relativenumber = true
set.wildmode = "longest,list"
set.cc = "80"
set.mouse = "a"
set.clipboard = "unnamedplus"
set.cursorline = true
set.ttyfast = true
set.fixeol = false
set.splitright = true
set.splitbelow = true
set.termguicolors = true
