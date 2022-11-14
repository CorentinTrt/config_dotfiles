local status_ok, prettier = pcall(require, "prettier")
if (not status_ok) then
  print('prettier is not installed / working')
  return
end

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less"
  }
}

