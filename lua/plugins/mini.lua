return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    -- Splash screen
    require('mini.starter').setup()

    require('mini.basics').setup({
      options = {
          extra_ui = true,
          win_borders = 'double',
      },
      mappings = {
          windows = true,
      }
    })

    -- File picker and fuzzy finder
    require('mini.pick').setup({
        options = {
            use_cache = true
        }
    })

    -- Status line styling
    require('mini.statusline').setup()

    -- Tab bar styling
    require('mini.tabline').setup()

    -- Apply language specific comments
    require('mini.comment').setup()

    -- File browser / editor
    require('mini.files').setup()

    -- Current code scope
    require('mini.indentscope').setup()

    -- Animate cursor on move
    require('mini.animate').setup()

    -- Auto pair parens, quotes, etc.
    require('mini.pairs').setup()

    -- Create, edit, and delete surroundings (parens, quotes, etc.)
    require('mini.surround').setup()

    -- Extended f, F, t, T functionality
    require('mini.jump').setup()

    -- Jump to visual characters in buffer
    require('mini.jump2d').setup({
      mappings = {
        start_jumping = '<leader>s'
      }
    })

    -- Highlight current hovered word
    require('mini.cursorword').setup()

    vim.keymap.set('n', '<leader>ff', require('mini.pick').builtin.files);
    vim.keymap.set('n', '<leader>fb', require('mini.pick').builtin.buffers);
    vim.keymap.set('n', '<leader>fg', require('mini.pick').builtin.grep_live);
    vim.keymap.set('n', '<leader>fe', require('mini.files').open);
  end
}
