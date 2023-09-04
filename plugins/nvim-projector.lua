return {
  'kndndrj/nvim-projector',
  opts = {

    config = {
      -- array of loader names with parameters
      -- for available loaders and their options see "Loaders" section in README.md
      loaders = {
        {
          module = "builtin",
          options = {
            path = vim.fn.getcwd() .. "/.vim/projector.json",
            configs = nil,
          },
        },
        {
          module = "dap",
          options = nil,
        },
      },
      -- map of outputs per mode
      -- for available outputs and their options see "Outputs" section in README.md
      outputs = {
        task = {
          module = "builtin",
          options = nil,
        },
        debug = {
          module = "dap",
          options = nil,
        },
        database = {
          module = "dadbod",
          options = nil,
        },
      },
      -- function that formats the task selector output
      display_format = function(loader, scope, group, modes, name)
        return loader .. "  " .. scope .. "  " .. group .. "  " .. modes .. "  " .. name
      end,
      -- Reload configurations automatically before displaying task selector
      automatic_reload = false,
      -- map of icons
      -- NOTE: "groups" use nvim-web-devicons if available
      icons = {
        enable = true,
        scopes = {
          global = "",
          project = "",
        },
        groups = {},
        loaders = {},
        modes = {
          task = "",
          debug = "",
          database = ""
        },
      },

      -- common:
      name = "Task",                                         -- task's name
      scope = "global",                                      -- usually project or global
      group = "go",                                          --  language group (use vim filetype names for best icon experience)
      presentation = { "menuhidden" },                       -- various presentation options (only "menuhidden" supported for now)
      dependencies = { "project.go.Run", "global.go.Generate" }, -- list of task id's to run before this one
      after = "global.sh.After Task",                        -- task id to run after this one is finished
      env = { a = "b" },                                     -- map of environment variables
      cwd = "$HOME",                                         -- current working directory
      args = { "--arg1", "--arg2" },                         -- list of task's arguments
      pattern = "vim regex",                                 -- regex pattern to decide if a background task has finished (entered running state)
      -- task with this field is considered a long running task.
      -- If this task is specified as a dependency somewhere, it's considered as finished when this matches.
      -- task specific:
      command = "go run ${workspaceDirectory}/main.go", -- command to run in task mode
      -- debug specific:
      type = "delve",                               -- type of debug adapter
      request = "launch",
      program = "${workspaceDirectory}/main.go",
      port = "9876",
      -- + extra dap-specific parameters (see: https://github.com/mfussenegger/nvim-dap)
      -- database specific:
      databases = { -- list of databases
        {
          name = "My-DB",
          url = "postgres://postgres:mypassword@localhost:5432/my-db",
        },
        {
          -- ...
        },
      },
      queries = { -- list of queries per database type (see: dadbod-ui table helpers)
        postgresql = {
          List = "select * from {table} order by id asc",
          Count = "select count(*) from {table}"
        },
      }
    }
  },
  requires = {
    -- Install the ones you want (I recommend all)
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
    'tpope/vim-dadbod',
    'kristijanhusak/vim-dadbod-ui',
    -- Devicons are also supported:
    'kyazdani42/nvim-web-devicons',
    -- Any extra extensions that you want:
    'kndndrj/projector-loader-vscode',
  },

  config = function(_, opts)
    require("nvim-projector").setup(opts)
  end
}
