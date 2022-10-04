local status, gruvbox = pcall(require, 'gruvbox')
if (not status) then
  print('gruvbox not installed / working')
  return
end

gruvbox.setup({
  invert_selection = true,
  comment_italic = true,
  overrides = {
    -- [ Override SignColumn background ]
    SignColumn = { bg = 'none' },
    GruvboxAquaSign = {bg = 'none' },
    GruvboxBlueSign = { bg = 'none' },
    GruvboxGreenSign = {bg = 'none' },
    GrubboxOrangeSign = {bg = 'none' },
    GruvboxPurpleSign = {bg = 'none' },
    GruvboxRedSign = { bg = 'none' },
    GruvboxYellowSign = { bg = 'none' }
  }
})

vim.cmd([[colorscheme gruvbox]])

