return {
  {
    'Mofiqul/vscode.nvim',
    config = function()
      require('vscode').setup {
        -- Set style in setup
        style = 'dark',

        -- Enable transparent background
        -- transparent = true,

        -- Disable italic comment
        italic_comments = false,

        -- Underline `@markup.link.*` variants
        underline_links = true,

        color_overrides = {
          vscPink = '#C586D2',
          vscYellow = '#E9E9AA',
        },
      }
      require('vscode').load()
    end,
  },
}
