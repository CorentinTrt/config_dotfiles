local status, autotag = pcall(require, "nvim-ts-autotag")
if (not status) then
  print('ts-autotag is not installed / working')
  return
end

autotag.setup({})
