return {
  "adalessa/laravel.nvim",
  opts = {
    split = {
      relative = "editor",
      position = "bottom",
      size = "30%",
      enter = true,
    },
    bind_telescope = true,
    lsp_server = "phpactor",
    register_user_commands = true,
    route_info = {
      enable = true,
      position = "right",
    },
    default_runner = "buffer",
    commands_runner = {
      ["dump-server"] = "persist",
      ["queue:listen"] = "persist",
      ["serve"] = "persist",
      ["websockets"] = "persist",
      ["queue:restart"] = "watch",
      ["tinker"] = "terminal",
      ["db"] = "terminal",
    },
    resources = {
      ["make:cast"] = "app/Casts",
      ["make:channel"] = "app/Broadcasting",
      ["make:command"] = "app/Console/Commands",
      ["make:component"] = "app/View/Components",
      ["make:controller"] = "app/Http/Controllers",
      ["make:event"] = "app/Events",
      ["make:exception"] = "app/Exceptions",
      ["make:factory"] = function(name)
        return string.format("database/factories/%sFactory.php", name), nil
      end,
      ["make:job"] = "app/Jobs",
      ["make:listener"] = "app/Listeners",
      ["make:mail"] = "app/Mail",
      ["make:middleware"] = "app/Http/Middleware",
      ["make:migration"] = function(name)
        local result = require("laravel.runners").sync { "fd", name .. ".php" }
        if result.exit_code == 1 then
          return "", result.error
        end

        return result.out, nil
      end,
      ["make:model"] = "app/Models",
      ["make:notification"] = "app/Notifications",
      ["make:observer"] = "app/Observers",
      ["make:policy"] = "app/Policies",
      ["make:provider"] = "app/Providers",
      ["make:request"] = "app/Http/Requests",
      ["make:resource"] = "app/Http/Resources",
      ["make:rule"] = "app/Rules",
      ["make:scope"] = "app/Models/Scopes",
      ["make:seeder"] = "database/seeders",
      ["make:test"] = "tests/Feature",
    },
  },
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "tpope/vim-dotenv",
    "MunifTanjim/nui.nvim",
  },
  cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
  keys = {
    { "<leader>la", ":Laravel artisan<cr>" },
    { "<leader>lr", ":Laravel routes<cr>" },
    {
      "<leader>lt",
      function()
        require("laravel.tinker").send_to_tinker()
      end,
      mode = "v",
      desc = "Laravel Application Routes",
    },
  },
  event = { "VeryLazy" },
  config = function(_, opts)
    require("laravel").setup(opts)
    require("telescope").load_extension "laravel"
  end,
}
