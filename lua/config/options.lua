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
    callback = function(event)
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
                    [vim.diagnostic.severity.ERROR] = " ",
                    [vim.diagnostic.severity.WARN] = "1 ",
                    [vim.diagnostic.severity.INFO] = "2 ",
                    [vim.diagnostic.severity.HINT] = "3 "
                }
            }
        })
    end
})
