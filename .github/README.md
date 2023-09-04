# ⚡️ Template for HydraVim User Config
- Base to create your HydraVim configuration, which allows you to keep the latest version installed without losing your modifications.
- Use the command below to install the configuration template inside the `.../nvim/lua/user/` folder.

```lua
:HydraVimCustomConfig
```

## 🧬 Your personal configuration

- Fork this repository
- Clone it into `.../nvim/lua/user/`

### Unix
```sh
git clone https://github.com/<user>/<repo> ~/.config/nvim/lua/user
```

### Windows
```sh
git clone https://github.com/<user>/<repo> $HOME\AppData\Local\nvim\lua\user
```

## 📚 Wiki
Learn more on the [Wiki](https://github.com/HydraVim/HydraVim/wiki/Custom-User-Config)

## ✨ Note
- It is possible to create subdirectories in .../nvim/user/ and use them as needed. That folder is not versioned.
- The user folder is ignored during update processes, so you can keep your HydraVim up to date without losing your customizations.
