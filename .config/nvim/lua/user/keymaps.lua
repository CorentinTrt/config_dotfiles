local keymap = vim.keymap

-- [ Move lines ]
keymap.set('n', '<C-j>', ':m .+1<CR>')
keymap.set('n', '<C-k>', ':m .-2<CR>')

-- [ Don't yank when x ]
keymap.set('n', 'x', '"_x')

-- [ Increment / Decrement ]
keymap.set('n', '=', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- [ Delete words backward ]
keymap.set('n', 'dw', 'vb"_d')
keymap.set('i', '<A-BS>', '<C-w>')

-- [ Inverse block jump ]
keymap.set('n', '{', '}')
keymap.set('n', '}', '{')

-- [ Tabs ]
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- [ Windows ]
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sl', '<C-w>l')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sh', '<C-w>h')

keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
