1. On CachyOS hello, install gaming packages, check profile-sync-daemon
2. sudo pacman -S yay
3. yay -Syu
4. yay -S --needed $(cat packages.txt)
5. Sign in to 1Password and Brave browser (make sure to enable "Sync everything" in Brave)
6. sudo npm install -g tree-sitter-cli
7. git clone https://github.com/ramikw/neovim-config.git ~/.config/nvim
8. ln -sf "$(pwd)/gitconfig" ~/.gitconfig
9. Kanata:
   - sudo ln -sf "$(pwd)/kanata.kbd" /etc/xdg/kanata.kbd
   - sudo ln -sf "$(pwd)/kanata.service" /etc/systemd/system/kanata.service
   - sudo systemctl daemon-reload
   - sudo systemctl enable --now kanata
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
13. Edit /boot/limine.conf (sudo -E -s nvim /boot/limine.conf) and set `timeout: 0` at the top of the file to skip the boot menu delay (boots the default entry instantly).
14. tmux:
   - mkdir -p ~/.config/tmux && ln -sf "$(pwd)/tmux.conf" ~/.config/tmux/tmux.conf
   - git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
   - start tmux, then press prefix + I (capital i) to install the plugins (sensible, prefix-highlight, better-mouse-mode)
15. Konsole: ln -sf "$(pwd)/konsole/konsolerc" ~/.config/konsolerc && mkdir -p ~/.local/share/konsole && ln -sf "$(pwd)/konsole/Profile 1.profile" ~/.local/share/konsole/"Profile 1.profile"
16. Kate: ln -sf "$(pwd)/kate/katerc" ~/.config/katerc
17. Change virtual desktop layout to two rows with two desktops each
18. Fix sleep (Gigabyte motherboard wakeup issue):
   - sudo ln -sf "$(pwd)/99-sleep-fix.rules" /etc/udev/rules.d/99-sleep-fix.rules && sudo udevadm control --reload
   - Add kernel param `acpi_osi="!Windows 2015"` to /etc/default/limine (KERNEL_CMDLINE), then sudo limine-update
19. Spectacle: ln -sf "$(pwd)/spectacle/spectaclerc" ~/.config/spectaclerc
20. Keyboard shortcuts: ln -sf "$(pwd)/kglobalshortcuts/kglobalshortcutsrc" ~/.config/kglobalshortcutsrc
19. Brave: enable brave://flags/#middle-button-autoscroll for middle-click drag to scroll

Todo:
1. Learn shortcuts (add to anki)
2. Add shortcut to open browser and terminal, and file explorer
3. Auto mount SSD and HDD
5. Enable HDR for all games

| Action | Shortcut |
| --- | --- |
| Switch to desktop (up/down/left/right) | Ctrl+Meta+Up / Ctrl+Meta+Down / Ctrl+Meta+Left / Ctrl+Meta+Right |
| Move window to desktop (up/down/left/right) | Ctrl+Meta+Shift+Up / Ctrl+Meta+Shift+Down / Ctrl+Meta+Shift+Left / Ctrl+Meta+Shift+Right |
| Toggle/Maximize window | Meta+PgUp |
| Minimize window | Meta+PgDown |
| Tile window left/right/top/bottom | Meta+Left / Meta+Right / Meta+Up / Meta+Down |
| Quick launcher (KRunner) | Alt+Space |
| Screenshot (rectangular region) | Print |
