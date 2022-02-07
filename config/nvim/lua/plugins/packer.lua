local present, packer = pcall(require, "packer")

if not present then
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path,
    })
    vim.cmd "packadd packer.nvim"
  end

  packer = require("packer")
end

return packer.startup(function()
  use "BlakeWilliams/vim-pry"
  use "BlakeWilliams/vim-tbro"
  use "L3MON4D3/LuaSnip"
  use "christoomey/vim-tmux-navigator"
  use "famiu/feline.nvim"
  use "goolord/alpha-nvim"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-path"
  use "hrsh7th/nvim-cmp"
  use "ibhagwan/fzf-lua"
  use "janko-m/vim-test"
  use "jose-elias-alvarez/nvim-lsp-ts-utils"
  use "kyazdani42/nvim-web-devicons"
  use "liuchengxu/vista.vim"
  use "lukas-reineke/indent-blankline.nvim"
  use "mattn/gist-vim"
  use "neovim/nvim-lspconfig"
  use "nvim-treesitter/nvim-treesitter"
  use "tpope/vim-commentary"
  use "tpope/vim-fugitive"
  use "tpope/vim-obsession"
  use "tpope/vim-rails"
  use "tpope/vim-rhubarb"
  use "tpope/vim-vinegar"
  use "wbthomason/packer.nvim"

  use { "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } }
  use { "junegunn/fzf", run = "./install --bin" }
  use { "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } }
  use { "github/copilot.vim", run = ":Copilot setup" }

  use {
    "jose-elias-alvarez/null-ls.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig",
    }
  }
end)
