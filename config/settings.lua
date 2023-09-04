-- set options in HydraVim: opt, wo, g, o, b,
-- the values defined here will replace default values if there is a default value in the same variable.

return {
  opt = {
    tabstop = 2,
    guifont="Dank Mono Regular:h12"
  },
  wo = {
    wrap = false,
  },
  o = {
    syntax = "on",
    background = "dark"
  },
  g = {
    hydravim_theme = "oxocarbon",
    hydravim_branch = "main",
    hydravim_remote = "HydraVim/HydraVim",
    hydravim_branch_template = "1.1",
    hydravim_dash = true,
  },
}
