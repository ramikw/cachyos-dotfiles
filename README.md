## Steps on new install

1. On CachyOS Hello, install gaming packages, check profile-sync-daemon
2. `sudo pacman -S yay`
3. `yay -Syu`
4. `yay -S --needed $(cat packages.txt)`
5. Sign in to 1Password and Brave (enable "Sync everything" in Brave)
6. `sudo npm install -g tree-sitter-cli`
7. `git clone https://github.com/ramikw/neovim-config.git ~/.config/nvim`
8. `ln -sf "$(pwd)/gitconfig" ~/.gitconfig`
9. Kanata:
   - [Add user to permission groups](https://github.com/jtroo/kanata/blob/main/docs/setup-linux.md#instructions)
   - `sudo ln -sf "$(pwd)/kanata.kbd" /etc/xdg/kanata.kbd`
   - `mkdir -p ~/.config/systemd/user`
   - `ln -sf "$(pwd)/kanata.service" ~/.config/systemd/user/kanata.service`
   - `systemctl --user daemon-reload`
   - `systemctl --user enable kanata.service`
   - `systemctl --user start kanata.service`
10. VLC: `ln -sf "$(pwd)/vlc" ~/.config/vlc`
11. lazygit: `mkdir -p ~/.config/lazygit && ln -sf "$(pwd)/lazygit.yml" ~/.config/lazygit/config.yml`
12. zsh:
   - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended`
   - `ln -sf /usr/share/zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`
   - `ln -sf /usr/share/zsh/plugins/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting`
   - `ln -sf /usr/share/zsh-theme-powerlevel10k ~/.oh-my-zsh/custom/themes/powerlevel10k`
   - `mkdir -p ~/.config/zsh && ln -sf "$(pwd)/zshrc" ~/.config/zsh/.zshrc`
   - `echo 'export ZDOTDIR="$HOME/.config/zsh"' > ~/.zshenv` (so zsh reads `.zshrc` from `~/.config/zsh`)
   - `chsh -s $(which zsh)` (make zsh the default shell)
   - Restart shell and run `p10k configure` to generate `~/.config/zsh/.p10k.zsh`
13. Limine: open `/boot/limine.conf` with `sudo -E -s nvim /boot/limine.conf` and set `timeout: 0` at the top to skip the boot menu delay
14. tmux:
   - `mkdir -p ~/.config/tmux && ln -sf "$(pwd)/tmux.conf" ~/.config/tmux/tmux.conf`
   - `git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm`
   - Start tmux, then press `prefix + I` to install plugins (sensible, prefix-highlight, better-mouse-mode)
15. Konsole:
   - `ln -sf "$(pwd)/konsole/konsolerc" ~/.config/konsolerc`
   - `mkdir -p ~/.local/share/konsole && ln -sf "$(pwd)/konsole/Profile 1.profile" ~/.local/share/konsole/"Profile 1.profile"`
16. Kate: `ln -sf "$(pwd)/kate/katerc" ~/.config/katerc`
17. Change virtual desktop layout to two rows with two desktops each in Settings → Virtual Desktops
18. Fix sleep (Gigabyte motherboard wakeup issue):
   - `sudo ln -sf "$(pwd)/99-sleep-fix.rules" /etc/udev/rules.d/99-sleep-fix.rules && sudo udevadm control --reload`
   - Add kernel param `acpi_osi="!Windows 2015"` to `/etc/default/limine` (`KERNEL_CMDLINE`), then run `sudo limine-update`
19. Spectacle: `ln -sf "$(pwd)/spectacle/spectaclerc" ~/.config/spectaclerc`
20. Keyboard shortcuts: `ln -sf "$(pwd)/kglobalshortcuts/kglobalshortcutsrc" ~/.config/kglobalshortcutsrc`
21. Brave: enable `brave://flags/#middle-button-autoscroll` for middle-click drag to scroll

## Other

1. To auto mount disks, open KDE Partition Manager, right-click a partition → `Edit Mount Point`, set the path (e.g. `/mnt/ssd`), and save.

### Gaming

1. To play games in HDR, set the following launch arguments in Steam: `PROTON_ENABLE_WAYLAND=1 PROTON_ENABLE_HDR=1 %command%`
2. [Disable caching](https://wiki.cachyos.org/configuration/gaming/#pre-caching-shaders-with-proton-cachyos--ge-and--em)
3. [Increase maximum shaders size](https://wiki.cachyos.org/configuration/gaming/#pre-caching-shaders-with-proton-cachyos--ge-and--em)
