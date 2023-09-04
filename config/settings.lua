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
    hydravim = {
      lazy = {
        lockfile = vim.fn.stdpath "config" .. "/lua/user/data/lazy/lazy-lock.json",
      },
      dirs = {
        data = vim.fn.stdpath "config" .. "/lua/user/data",
      },
      ui = {
        theme = "oxocarbon",
        dash = true,
      },
      repository = {
        branch = "dev",
        user_config = {
          branch = "dev",
          remote = "HydraVim/user-config",
        },
      },
    },
  },
}
