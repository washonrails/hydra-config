return {
  "Pocco81/auto-save.nvim",
  cmd = { "ASToggle" },
  enabled = true,
  -- ft = { "html", "css", "javascript" },
  config = function(_, opts)
    require("auto-save").setup(opts)
  end,
}
