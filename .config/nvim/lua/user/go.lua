local status_ok, go = pcall(require, 'go')
if not status_ok then
  print ('vim-go is not installed / working')
end

go.setup({
  formatter = 'gomft'
})

