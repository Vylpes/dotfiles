local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap =
    vim.fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end
-- Register Packer with vim
vim.api.nvim_cmd({
    cmd = "packadd",
    args = {"packer.nvim"},
}, {})

return require("packer").startup {
  function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Plugins go here
    use 'dracula/vim'
    use 'ryanoasis/vim-devicons'
    -- use 'SirVer/ultisnips'
    use 'honza/vim-snippets'
    use 'scrooloose/nerdtree'
    use 'preservim/nerdcommenter'
    use 'mhinz/vim-startify'
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'
    use 'ibhagwan/fzf-lua'
    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/prettier.nvim'
    use 'OmniSharp/omnisharp-vim'

    -- Install and compile Plugins
    if packer_bootstrap then
      require("packer").sync()
    end
  end
}

