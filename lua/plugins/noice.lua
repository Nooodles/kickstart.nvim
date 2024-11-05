return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    -- presets = {
    --   bottom_search = true, -- use a classic bottom cmdline for search
    --   command_palette = true, -- position the cmdline and popupmenu together
    --   -- long_message_to_split = true, -- long messages will be sent to a split
    --   -- inc_rename = false, -- enables an input dialog for inc-rename.nvim
    --   lsp_doc_border = false, -- add a border to hover docs and signature help
    -- },
    cmdline = {
      enabled = true, -- enables the Noice cmdline UI
      view = 'cmdline', -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
      opts = {}, -- global options for the cmdline. See section on views
      ---@type table<string, CmdlineFormat>
      format = {
        -- conceal: (default=true) This will hide the text in the cmdline that matches the pattern.
        -- view: (default is cmdline view)
        -- opts: any options passed to the view
        -- icon_hl_group: optional hl_group for the icon
        -- title: set to anything or empty string to hide
        cmdline = { pattern = '^:', icon = '', lang = 'vim' },
        search_down = { kind = 'search', pattern = '^/', icon = ' ', lang = 'regex' },
        search_up = { kind = 'search', pattern = '^%?', icon = ' ', lang = 'regex' },
        filter = { pattern = '^:%s*!', icon = '$', lang = 'bash' },
        lua = { pattern = { '^:%s*lua%s+', '^:%s*lua%s*=%s*', '^:%s*=%s*' }, icon = '', lang = 'lua' },
        help = { pattern = '^:%s*he?l?p?%s+', icon = '' },
        input = { view = 'cmdline_input', icon = '󰥻 ' }, -- Used by input()
        -- lua = false, -- to disable a format, set to `false`
      },
    },
    -- Skip some messages to unclutter the notifications
    routes = {
      -- { filter = { find = 'E162' }, view = 'mini' },
      { filter = { event = 'msg_show', kind = '', find = 'written' }, view = 'mini' },
      { filter = { event = 'msg_showmode' }, view = 'notify' },
      { filter = { find = '%d+ line less' }, view = 'mini' },
      { filter = { find = '%d+ less lines' }, view = 'mini' },
      { filter = { find = '%d+ fewer lines' }, view = 'mini' },
      { filter = { find = '%d+ more lines' }, view = 'mini' },
      { filter = { find = '%d+ more line' }, view = 'mini' },
      { filter = { find = 'E37' }, view = 'mini' },
    },
    -- cmdline = {
    --   enabled = false,
    -- },
    -- messages = {
    --   enabled = false,
    -- },
    -- popupmenu = {
    --   enabled = false,
    -- },
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    'rcarriga/nvim-notify',
  },
}
