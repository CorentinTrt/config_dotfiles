local status, bufferline = pcall(require, "bufferline")
if (not status) then
  print('bufferline is not installed / working')
  return
end

local colors = {
  bg = '#282828',
  accent = '#458588',
  accent_2 = '#d79921',
  fg = '#fbf1c7',
  fg_not_selected = '#bdae93',
}

bufferline.setup({
  options = {
    mode = "tabs",
    always_show_bufferline = false,
    numbers = true,
    separator_style = 'thick',
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = colors.bg,
      bg = colors.bg,
    },
    indicator_selected = {
      fg  = colors.bg,
      bg = colors.accent,
    },
    background = {
      fg = colors.fg_not_selected, -- forground color no selected tab
      bg = colors.bg, -- background color no selected tab
    },
    buffer_selected = {
      fg = colors.fg,
      bold = true,
    },
    modified = {
      fg = colors.accent_2,
    },
    modified_selected = {
      fg = colors.accent_2,
    },
    numbers = {
      fg = colors.fg_not_selected,
    },
    fill = {
      bg = colors.bg
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
