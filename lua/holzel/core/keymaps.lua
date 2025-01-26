vim.g.mapleader = " "

local keymap = vim.keymap -- to be concise

-- use qq to exit inset mode
keymap.set("i", "qq", "<ESC>")

-- general keymaps

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search

keymap.set("n", "x", '"_x') -- delete a char without adding to copy reg

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- windows
keymap.set("n", "<leader>wv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>ws", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>wc", ":close<CR>") -- close cuurent split window

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to prev tab

-- plugin keymaps
--

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize window

-- nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- maximize window

-- telescope
keymap.set("n", "<leader>.", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>*", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- floating terminal
keymap.set({ "n", "t" }, "<leader>tt", "<cmd>Flowy<cr>")
