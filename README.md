1. On CachyOS hello, install gaming packages, check profile-sync-daemon
2. sudo pacman -S yay
3. yay -Syu
4. yay -S --needed $(cat packages.txt)
5. Sign in to 1Password and Brave browser (make sure to enable "Sync everything" in Brave)
6. sudo npm install -g tree-sitter-cli
7. git clone https://github.com/ramikw/neovim-config.git ~/.config/nvim
8. ln -sf "$(pwd)/gitconfig" ~/.gitconfig
9. Fix kanata:
   - sudo usermod -aG input $USER (then re-login, needed for /dev/uinput access)
   - sudo systemctl enable --now kanata (edit /etc/kanata.kbd or service config to point at "$(pwd)/kanata.kbd")
10. vlc: mkdir -p ~/.config/vlc && cp -r "$(pwd)/vlc/." ~/.config/vlc/
11. lazygit: mkdir -p ~/.config/lazygit && ln -sf "$(pwd)/lazygit.yml" ~/.config/lazygit/config.yml
12. zsh:
   - sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
   - ln -sf /usr/share/zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
   - ln -sf /usr/share/zsh/plugins/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
   - ln -sf /usr/share/zsh-theme-powerlevel10k ~/.oh-my-zsh/custom/themes/powerlevel10k
   - mkdir -p ~/.config/zsh && ln -sf "$(pwd)/zshrc" ~/.config/zsh/.zshrc
   - echo 'export ZDOTDIR="$HOME/.config/zsh"' > ~/.zshenv (so zsh reads .zshrc from ~/.config/zsh)
   - chsh -s $(which zsh) (make zsh the default shell)
   - restart shell and run `p10k configure` to generate ~/.config/zsh/.p10k.zsh

TODO: i have not completed this one yet
13. Edit /boot/limine.conf (sudo -E -s nvim /boot/limine.conf) and set `timeout: 0` at the top of the file to skip the boot menu delay (boots the default entry instantly).

Todo:
1. Learn shortcuts
2. Show workspaces in bottom bar
3. https://github.com/ramikw/NixOS/blob/main/home/tmux.nix
4. Font in console
