require('user.baseconfig')
require('user.highlights')
require('user.keymaps')
require('user.plugins')
require('user.cmp')
require('user.lsp')

-- [ Check OS ]
local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('user.macos')
end
if is_win then
  require('user.windows')
end

