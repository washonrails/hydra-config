-- add mappings to HydraVim

return {
  n = {
    ["<C-Q>"] = { "<ESC><CMD>wqall<CR>" },
    ["<space>br"] = { "<CMD>SearchBoxReplace<CR>" },
    ["<C-b>"] = { "<CMD>SearchBoxMatchAll<CR>" },
    ["pp"] = { "<ESC><CMD>MpvToggle<CR>" },
    ["db"] = { "<ESC><CMD>:lua require('dbee').toggle()<CR>"},
  },

  v = {
    ["<C-Q>"] = { "<ESC><CMD>q!<CR>" },
  },

  i = {
    ["<C-Q>"] = { "<ESC><CMD>q!<CR>" },
  },

  t = {
    ["<A-h>"] = { "<CMD>ToggleTerm<CR>" },
  },
}
