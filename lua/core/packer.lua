-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'rose-pine/neovim', as = 'rose-pine' }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use { 'mbbill/undotree' }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use { "lukas-reineke/indent-blankline.nvim" }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'goolord/alpha-nvim',
        requires = {
            { 'kyazdani42/nvim-web-devicons'}
        }
    }
    use { 'kalvinpearce/ShaderHighlight' }
    use { 'Shatur/neovim-session-manager',
    requires = {
        { 'nvim-lua/plenary.nvim'},
        { 'stevearc/dressing.nvim'}, --optional
        { 'nvim-telescope/telescope-ui-select.nvim'} --optional
    }
}
end)
