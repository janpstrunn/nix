{
  pkgs,
  # pkgs-unstable,
  ...
}: {
  imports = [
    # Home Manager
    ../../modules/home.nix
    # Programming Languages
    ../../modules/user/lang/android.nix
    ../../modules/user/lang/cpp.nix
    ../../modules/user/lang/go.nix
    ../../modules/user/lang/nodejs.nix
    ../../modules/user/lang/python.nix
    ../../modules/user/lang/ruby.nix
    ../../modules/user/lang/rust.nix
    # Applications
    ../../modules/user/apps/cli.nix
    # ../../modules/user/apps/emacs.nix
    ../../modules/user/apps/nvim.nix
    # ../../modules/user/apps/obsidian.nix
    ../../modules/user/apps/email.nix
    ../../modules/user/apps/password-manager.nix
    # ../../modules/user/apps/syncthing.nix
    ../../modules/user/apps/task-management.nix
    # ../../modules/user/apps/virt-manager.nix
    # Window Manager
    # ../../modules/user/wm/hyprland.nix
  ];

  home.packages = with pkgs; [
    alacritty
    # borgbackup
    # bottles
    # brave
    # buku
    # ddgr
    evince
    # firefox
    # floorp
    # foot
    # freetube
    gimp3
    # gnome-font-viewer
    # gnome-maps
    # kitty
    # libreoffice
    # librewolf
    lynx
    # megacmd
    # mermaid-cli
    mpv
    newsboat
    # nyxt
    # obs-studio
    pandoc
    # qutebrowser
    rclone
    restic
    seahorse
    taskchampion-sync-server
    # ungoogled-chromium
    # vivaldi
    # vlc
    # w3m
    # wine
    zathura
    # zotero
  ];
  # ++ (with pkgs-unstable; [
  #   foot
  # ]);

  home.file = {
    # Waybar Configuration
    ".config/waybar/config.jsonc" = {
      text = ''
        {
          "include": [
            "$HOME/.config/waybar/profiles/default-mechabar.jsonc",
            "$HOME/.config/waybar/modules/nixos.jsonc",
            "$HOME/.config/waybar/modules/desktop.jsonc",
          ],
        }
      '';
      force = true;
    };
  };
}
