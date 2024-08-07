-- Set leader key to space
vim.g.mapleader = " "
local keymap = vim.keymap

-- General keymaps
keymap.set("i", "jk", "<ESC>",{desc = "Exit insert "})                 -- exit insert mode with jk
keymap.set("i", "ii", "<ESC>",{desc = "Exit insert"})                 -- exit insert mode with ii
keymap.set("n", "<leader>wq", ":wq<CR>",{desc = "Save and quit"})       -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>",{desc = "Quit without saving"})       -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>",{desc = "Save"})        -- save
keymap.set("n", "gx", ":!open <c-r><c-a><CR>",{desc = "Open url under cursor"}) -- open URL under cursor

-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v",{desc = "Vertical split"})     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s",{desc = "Horizontal split"})     -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=",{desc = "Make window split equal"})     -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>",{desc = "Close split"}) -- close split window
keymap.set("n", "<leader>sj", "<C-w>-",{desc = "Make split height shorter"})     -- make split window height shorter
keymap.set("n", "<leader>sk", "<C-w>+",{desc = "Make split height taller"})     -- make split windows height taller
keymap.set("n", "<leader>sl", "<C-w>>5",{desc = "Make split window width bigger"})    -- make split windows width bigger
keymap.set("n", "<leader>sh", "<C-w><5",{desc = "Make split window width smaller"})    -- make split windows width smaller
keymap.set("n", "<leader>s0", "<C-w>l",{desc = "Change to left split"})     -- change split window to right
keymap.set("n", "<leader>s1", "<C-w>h",{desc = "Change split to right"})     -- change split window to left

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>",{desc = "Open new tab"})   -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>",{desc = "Close a tab"}) -- close a tab
keymap.set("n", "<leader>tn", ":tabn<CR>",{desc = "Next tab"})     -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>",{desc = "Previous tab"})     -- previous tab

-- Diff keymaps
keymap.set("n", "<leader>cc", ":diffput<CR>",{desc = "Diff from current to other "})   -- put diff from current to other during diff
keymap.set("n", "<leader>cj", ":diffget 1<CR>",{desc = "Get diff from local during merge"}) -- get diff from left (local) during merge
keymap.set("n", "<leader>ck", ":diffget 3<CR>",{desc = "Get diff from remote during merge"}) -- get diff from right (remote) during merge
keymap.set("n", "<leader>cn", "]c",{desc = "Next diff hunk"})             -- next diff hunk
keymap.set("n", "<leader>cp", "[c",{desc = "Previous diff hunk"})             -- previous diff hunk

-- Quickfix keymaps
keymap.set("n", "<leader>qo", ":copen<CR>",{desc = "Open quickfix list"})  -- open quickfix list
keymap.set("n", "<leader>qf", ":cfirst<CR>",{desc = "Jump to first quick fix"}) -- jump to first quickfix list item
keymap.set("n", "<leader>qn", ":cnext<CR>",{desc = "Jump to next quickfix"})  -- jump to next quickfix list item
keymap.set("n", "<leader>qp", ":cprev<CR>",{desc = "Jump to prev quickfix"})  -- jump to prev quickfix list item
keymap.set("n", "<leader>ql", ":clast<CR>",{desc = "Jump to last quickfix"})  -- jump to last quickfix list item
keymap.set("n", "<leader>qc", ":cclose<CR>",{desc = "Close quickfix list"}) -- close quickfix list

-- Vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>",{desc = "Toggle maximize tab"}) -- toggle maximize tab

-- Nvim-tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>",{desc = "Open file explorer"})   -- toggle file explorer
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>",{desc = "Toggle focus to file explorer"})    -- toggle focus to file explorer
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>",{desc = "Find file in file explorer"}) -- find file in file explorer

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {desc = "Telescope find files"})
keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {desc = "Telescope Grep"})
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {desc = "Telescope buffers"})
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {desc = "Telescope help tags"})
keymap.set('n', '<leader>fs', require('telescope.builtin').current_buffer_fuzzy_find, {desc = "Telescope fzf buffer"})
keymap.set('n', '<leader>fo', require('telescope.builtin').lsp_document_symbols, {desc = "Telescope document symols"})
keymap.set('n', '<leader>fi', require('telescope.builtin').lsp_incoming_calls, {desc = "Telescope incoming calls"})
keymap.set('n', '<leader>fm', function() require('telescope.builtin').treesitter({ default_text = ":method:" }) end)

-- Git-blame
keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>",{desc = "Toogle git blame"}) -- toggle git blame

-- Harpoon
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file,{desc = "Add file harpoon"})
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu,{desc = "Quick Menu harpoon"})
keymap.set("n", "<leader>h1", function() require("harpoon.ui").nav_file(1) end)
keymap.set("n", "<leader>h2", function() require("harpoon.ui").nav_file(2) end)
keymap.set("n", "<leader>h3", function() require("harpoon.ui").nav_file(3) end)
keymap.set("n", "<leader>h4", function() require("harpoon.ui").nav_file(4) end)
keymap.set("n", "<leader>h5", function() require("harpoon.ui").nav_file(5) end)
keymap.set("n", "<leader>h6", function() require("harpoon.ui").nav_file(6) end)
keymap.set("n", "<leader>h7", function() require("harpoon.ui").nav_file(7) end)
keymap.set("n", "<leader>h8", function() require("harpoon.ui").nav_file(8) end)
keymap.set("n", "<leader>h9", function() require("harpoon.ui").nav_file(9) end)

-- Vim REST Console
keymap.set("n", "<leader>xr", ":call VrcQuery()<CR>",{desc = "Run quest query"}) -- Run REST query

-- LSP
keymap.set('n', '<leader>gg', '<cmd>lua vim.lsp.buf.hover()<CR>',{desc = "Lsp Hover"})
keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>',{desc = "Lsp definition"})
keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>',{desc = "Lsp declaration"})
keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>',{desc = "Lsp implementation"})
keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>',{desc = "Lsp type_definition"})
keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>',{desc = "Lsp references"})
keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>',{desc = "Lsp signature_help"})
keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>',{desc = "Lsp rename"})
keymap.set('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>',{desc = "lsp buff format"})
keymap.set('v', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>',{desc = "lsp code action"})
keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>',{desc = "lsp float"})
keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>',{desc = "lsp goto_prev"})
keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>',{desc = "lsp goto_next"})
keymap.set('n', '<leader>tr', '<cmd>lua vim.lsp.buf.document_symbol()<CR>',{desc = "lsp document_symbol"})
keymap.set('i', '<C-Space>', '<cmd>lua vim.lsp.buf.completion()<CR>',{desc = "lsp completion"})

-- Debugging
keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
keymap.set("n", "<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
keymap.set("n", "<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
keymap.set("n", '<leader>br', "<cmd>lua require'dap'.clear_breakpoints()<cr>")
keymap.set("n", '<leader>ba', '<cmd>Telescope dap list_breakpoints<cr>')
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>")
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>")
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>")
keymap.set("n", '<leader>dd', function()
  require('dap').disconnect(); require('dapui').close();
end)
keymap.set("n", '<leader>dt', function()
  require('dap').terminate(); require('dapui').close();
end)
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
keymap.set("n", '<leader>di', function() require "dap.ui.widgets".hover() end)
keymap.set("n", '<leader>d?',
  function()
    local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes)
  end)
keymap.set("n", '<leader>df', '<cmd>Telescope dap frames<cr>')
keymap.set("n", '<leader>dh', '<cmd>Telescope dap commands<cr>')
keymap.set("n", '<leader>de', function() require('telescope.builtin').diagnostics({ default_text = ":E:" }) end)


-- Filetype-specific keymaps (these can be done in the ftplugin directory instead if you prefer)
keymap.set("n", '<leader>go', function()
  if vim.bo.filetype == 'python' then
    vim.api.nvim_command('PyrightOrganizeImports')
  end
end)

keymap.set("n", '<leader>tc', function()
  if vim.bo.filetype == 'python' then
    require('dap-python').test_class();
  end
end)

keymap.set("n", '<leader>tm', function()
  if vim.bo.filetype == 'python' then
    require('dap-python').test_method();
  end
end)

-- Line Moving
keymap.set('v', 'J', ":m '>+1<CR>gv")
keymap.set('v', 'K', ":m '<-2<CR>gv")
-- Half screen jump
vim.keymap.set('n', '<C-u>', "<C-u>zz")
vim.keymap.set('n', '<C-d>', "<C-d>zz")
