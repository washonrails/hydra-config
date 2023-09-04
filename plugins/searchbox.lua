return {
  "VonHeikemen/searchbox.nvim",
  opts = {
    defaults = {
      reverse = false,
      exact = false,
      prompt = " ",
      modifier = "disabled",
      confirm = "off",
      clear_matches = true,
      show_matches = false,
    },
    popup = {
      relative = "win",
      position = {
        row = "50%",
        col = "50%",
      },
      size = 30,
      border = {
        style = "rounded",
        text = {
          top = "  Search ",
          top_align = "left",
        },
      },
      win_options = {
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
      },
    },
    hooks = {
      before_mount = function(input)
        -- code
      end,
      after_mount = function(input)
        -- code
      end,
      on_done = function(value, search_type)
        -- code
      end,
    },
  },

  config = function(_, opts)
    require("searchbox").setup(opts)
  end,
}
