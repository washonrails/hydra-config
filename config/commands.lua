-- add commands

local command = vim.api.nvim_create_user_command

command("StartMyApp", function ()
  require('laravel.application').run('artisan', {"serve"})
  require('laravel.application').run('artisan', {"queue:restart"})
  require('laravel.application').run('artisan', {"queue:listen"})
  require('laravel.application').run('yarn', {"dev"}, "persist")
end, { nargs = "*", desc = "Start Laravel server "})

command("CustomUserCommand", function(opts)
  print(opts.args)
end, { nargs = "*", desc = "custom user command" })
