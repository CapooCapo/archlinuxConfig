<h1> <3 HELLO THERE :3 !!!</h1>

<h2><a href ="https://github.com/hoangDEVteams/archlinuxConfig/"> HOME <3 </a></h2>
<img width="1918" height="1079" alt="image" src="https://github.com/user-attachments/assets/59716f6b-fd67-47b6-9f27-d4b194490f64" />

<h2><a href="https://ghostty.org/" > TERMINAL :3 </a></h2>
<img width="1916" height="1078" alt="image" src="https://github.com/user-attachments/assets/b532e28e-5036-4111-a9f3-ce2b6cad2dbb" />

<h2><< DEPENDENCY YOU NEED >> </h2>

| Nhóm chức năng                    | Tên gói (Arch)                                                                               | Tương đương / ghi chú (Ubuntu/Debian/Fedora/Khác)                    |
| --------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------- |
| Compositor & tiện ích Wayland     | `hyprland`, `hyprpaper`, `hypridle`, `hyprlock`, `hyprcursor`                                | Hyprland trên Ubuntu/Fedora thường qua PPA/COPR hoặc build từ source |
| Thanh trạng thái                  | `waybar`                                                                                     | Waybar có sẵn repo đa số distro                                      |
| Portal (screenshare, file picker) | `xdg-desktop-portal`, `xdg-desktop-portal-gtk`, `xdg-desktop-portal-hyprland`                | Tên tương tự; DE khác chọn backend khác (kde/gnome)                  |
| Screenshot & picker               | `grim`, `slurp`                                                                              | Tên giống nhau                                                       |
| Clipboard                         | `wl-clipboard`                                                                               | Tên giống nhau                                                       |
| Notification (tùy chọn)           | `swaync` *(hoặc `mako`)*                                                                     | Có thể thay bằng `mako`                                              |
| Wallpaper động (tùy chọn)         | `swww` *(hoặc `swaybg`)*                                                                     | `swaybg` phổ biến hơn trên repo chuẩn                                |
| NVIDIA driver & tools             | `nvidia-dkms`, `nvidia-utils`, `nvidia-settings`                                             | Ubuntu: `nvidia-driver-###`; Fedora: `akmod-nvidia` (RPM Fusion)     |
| Vulkan & VA-API                   | `vulkan-tools`, `vulkan-icd-loader`, `libva-nvidia-driver`                                   | Intel/AMD: `vulkan-intel` / `amdvlk`, `intel-media-driver`, `mesa`   |
| 32-bit cho game (tùy chọn)        | `lib32-nvidia-utils`, `lib32-vulkan-icd-loader`                                              | Bản multilib/compat tương đương trên distro khác                     |
| Âm thanh (PipeWire)               | `pipewire`, `pipewire-alsa`, `pipewire-pulse`, `pipewire-jack`, `wireplumber`, `pavucontrol` | Ubuntu mới có `wireplumber`; cũ dùng `pipewire-media-session`        |
| Bộ gõ tiếng Việt                  | `fcitx5`, `fcitx5-configtool`, `fcitx5-gtk`, `fcitx5-qt`, `fcitx5-unikey`                    | Có thể dùng `fcitx5-bamboo` thay `unikey`                            |
| Mạng                              | `networkmanager`, `nm-connection-editor`, `iwd`                                              | Ubuntu: `network-manager`; có thể dùng `wpa_supplicant` thay `iwd`   |
| Bluetooth                         | `bluez`, `bluez-utils`, `blueman`                                                            | Tên tương tự                                                         |
| Terminal & tiện ích               | `ghostty`, `zsh`, `fastfetch`, `ripgrep`, `fzf`, `htop`, `btop`, `wget`, `curl`              | Thay `ghostty` bằng `alacritty`/`kitty` nếu repo không có            |
| Ảnh chụp & annotate (tùy chọn)    | `flameshot`, `swappy`                                                                        | Tên tương tự                                                         |
| Nén/giải nén                      | `unzip`, `unrar`, `p7zip`                                                                    | Tên tương tự                                                         |
| Dev toolchain                     | `base-devel`, `gcc`, `cmake`, `meson`, `ninja`, `pkgconf`, `git`                             | Debian/Ubuntu: `build-essential` (thay `base-devel`)                 |
| Runtimes & Editor                 | `python`, `nodejs`, `npm`, `neovim`                                                          | Tên tương tự; có thể dùng `vim`, `zed`                               |
| Containers                        | `docker`, `docker-compose`                                                                   | Hoặc `podman`, `podman-compose`                                      |
| Display manager & seat            | `sddm`, `seatd`                                                                              | Thay bằng `gdm`/`lightdm`; seat qua `systemd-logind/elogind`         |
| Polkit agent                      | `polkit-gnome`                                                                               | KDE: `polkit-kde-agent-1`; LXQt: `lxqt-policykit`                    |
| Power & thiết bị                  | `upower`, `power-profiles-daemon`                                                            | Tên tương tự                                                         |
| Thư mục người dùng & tiện ích     | `xdg-user-dirs`, `xdg-utils`                                                                 | Tên tương tự                                                         |
| Fonts                             | `ttf-jetbrains-mono-nerd`, `ttf-dejavu` *(hoặc `noto-fonts`)*                                | Thêm `noto-fonts-emoji` nếu cần emoji                                |
| Icons                             | `papirus-icon-theme`, `otf-font-awesome`, `woff2-font-awesome`                               | Tên tương tự                                                         |

| Công cụ AUR/other                 | `yay`, `hyprsysteminfo`, `ngrok`                                                             | Distro khác: dùng package manager/flatpak tương đương                |
