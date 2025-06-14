vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true

-- https://neovim.io/doc/user/autocmd.html --
-- Autocommands are used to trigger actions based on events in Neovim.
local autocmd = vim.api.nvim_create_autocmd

autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup('lsp-attach', {
        clear = true
    }),
    callback = function()
        vim.diagnostic.config({
            virtual_lines = {
                current_line = true
            },
            virtual_text = false,
            underline = true,
            update_in_insert = false,
            severity_sort = true,
            float = {
                header = "",
                border = "rounded",
                source = true,
                focusable = true
            },
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "",
                    [vim.diagnostic.severity.WARN] = "",
                    [vim.diagnostic.severity.INFO] = "",
                    [vim.diagnostic.severity.HINT] = ""
                }
            }
        })

	-- Set coloring
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#ff5555" })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn",  { undercurl = true, sp = "#f1fa8c" })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo",  { undercurl = true, sp = "#8be9fd" })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint",  { undercurl = true, sp = "#50fa7b" })

	vim.api.nvim_set_hl(0, "DiagnosticSignError",      { fg = "#ff5555", bg = "NONE" })
	vim.api.nvim_set_hl(0, "DiagnosticSignWarn",       { fg = "#f1fa8c", bg = "NONE" })
	vim.api.nvim_set_hl(0, "DiagnosticSignInfo",       { fg = "#8be9fd", bg = "NONE" })
	vim.api.nvim_set_hl(0, "DiagnosticSignHint",       { fg = "#50fa7b", bg = "NONE" })

	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#ff5555" })
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn",  { fg = "#f1fa8c" })
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo",  { fg = "#8be9fd" })
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint",  { fg = "#50fa7b" })
    end
})
