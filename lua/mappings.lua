require "nvchad.mappings"

local map = vim.keymap.set

-- map("<leader>fm", 
--   function()
--     require("conform").format()
--   end,
--   "formatting"
-- )

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<A-Up>", "<Esc><C-w>k")
map("n", "<A-Down>", "<Esc><C-w>j")
map("n", "<A-Left>", "<Esc><C-w>h")
map("n", "<A-Right>", "<Esc><C-w>l")


map("t", "<A-Up>", "<C-\\><C-N>k")
map("t", "<A-Down>", "<C-\\><C-N><C-w>j")
map("t", "<A-Left>", "<C-\\><C-N><C-w>h")
map("t", "<A-Right>", "<C-\\><C-N><C-w>l")

map("i", "<A-Up>", "<Esc><C-w>k")
map("i", "<A-Down>", "<Esc><C-w>j")
map("i", "<A-Left>", "<Esc><C-w>h")
map("i", "<A-Right>", "<Esc><C-w>l")
map("i", "jk", "<ESC>")

map("v", ">", ">gv")
