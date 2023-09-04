-- add autom commands to HydraVim

local autocmd = vim.api.nvim_create_autocmd

local filetypes = {
	"*.html",
	"*.htm",
  "*.php",
	"*.css",
	"*.scss",
	"*.less",
	"*.js",
	"*.ts",
	"*.tsx",
	"*.vue",
	"*.md",
	"*.mdx",
}

autocmd({ "InsertEnter"}, {
    pattern = '*',
    command = "setlocal nohlsearch"
})

autocmd({ "InsertLeave"}, {
    pattern = '*',
    command = "setlocal hlsearch",
})

autocmd({ "BufWritePre" }, {
  pattern = filetypes,
  command = "HydraVimFormat"
})
