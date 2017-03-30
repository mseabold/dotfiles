# dotfiles
My common dotfiles (vim, tmux). It suits my fancy, hope it suits yours as well!

### Installing
To install simply download and run the install script

```
git clone https://github.com/mseabold/dotfiles.git
cd dotfiles
./install
```

This will sync submodules and generate symlinks in `$HOME` to repo.

After installing the configs, install the plugins using vim-plug 

```
vim +PlugInstall
```

### YouCompleteMe
If you want to use YouCompleteMe (which is enabled by default), complete the YCM installation

```
cd ~/.vim/plugged/YouCompleteMe
./install
```

You can check the YouCompleteMe docs for enabling specific language support and required YCM packages.

However, YouCompleteMe can be a resource hog and has some pretty strict requirements on Vim versions (not included in Ubuntu 14.04 LTS). As such, you can easily disable YCM support without modifying the configs:

```
echo "let g:enable_ycm = 0" >> ~/.vimrc.before
```

### Custom Settings
The dotfiles load a number of default global and plugin-specific settings. Global settings are directly in `vimrc`, and plugin-specific settings exist individually in `~/.vim/settings/`. Any `*.vim` file in this directory will be loaded.

To provide setting overrides, use the file `~/.local_settings.vim`. This file will be loaded once will other settings have been applied. This allows you to override any of these values (such as colorschemes).
