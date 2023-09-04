return {
  "nvim-telescope/telescope-ui-select.nvim",
  event = { "CmdlineEnter" },
  keys = {
    { "<F4>", "<cmd>lua vim.lsp.buf.range_code_action()<cr>" },
  },
  opts = {
    extensions = {
      ["ui-select"] = {
        require("telescope.themes").get_dropdown {},
      },
    },
  },
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension "ui-select"
  end,
}
