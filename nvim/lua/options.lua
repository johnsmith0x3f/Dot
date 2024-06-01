-- Enable 24-bit RGB color in the TUI.
vim.opt.termguicolors = true

-- Enable line number.
vim.opt.number = true
-- Use relative number for better hopping around.
vim.opt.relativenumber = true
-- Enable cursorline highlight.
vim.opt.cursorline = true

-- vim.opt.mouse = "a"

-- Set the width of tab characters...
vim.opt.tabstop = 4
-- and the width of indentations to always be the same.
vim.opt.shiftwidth = 0
-- Use spaces instead of tabs when indenting.
vim.opt.expandtab = true

-- Add additional filetypes.
vim.filetype.add({
    extension = {
        rasi = "rasi",
    }
})
