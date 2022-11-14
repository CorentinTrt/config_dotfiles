local status_ok, comment = pcall(require, 'Comment')
if not status_ok then
  print('comment is not installed / working')
end

comment.setup({
  toggler = {
    line = 'zmm',
  },
  opleader = {
    line = 'zm'
  }
})

