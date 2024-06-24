{
  pkgs,
  inputs,
  lib,
  ...
}: {
  # Define your packages here and everything related.

  home.packages = with pkgs; [
    # Define packages that derive from inputs

    inputs.hyprcontrib.packages.${pkgs.system}.hyprprop
    inputs.nh.packages.${pkgs.system}.default
    inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.mysql-workbench
    inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.gimp-with-plugins
    # inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.itch
    inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.handbrake
    inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.valent
    # inputs.nix-alien.packages.${pkgs.system}.nix-alien
    inputs.shadower.packages.${pkgs.system}.shadower
    inputs.wayfreeze.packages.${pkgs.system}.wayfreeze
    # inputs.tag-studio.packages.${pkgs.system}.default
    # Over
    wget
    lutris
    steam-rom-manager 
    neofetch
    font-manager
    gnome-photos
    easyeffects
    wlr-randr
    thefuck
    htop
    killall
    steamtinkerlaunch
    prismlauncher
    appimage-run
    cinnamon.nemo-fileroller
    nerdfonts
    webdav
    gamemode
    davfs2
    hollywood
    protonup-qt
    protonup-ng
    pavucontrol
    hyprpicker
    eww-wayland
    transmission-gtk
    libreoffice-fresh
    winetricks
    protontricks
    themechanger
    piper
    thunderbird
    mangohud
    nix-init
    waydroid
    rustdesk
    tartube-yt-dlp
    ffmpeg
    helvum
    krita
    lolcat
    cinny-desktop
    vulkan-tools
    fastfetch
    scrcpy
    baobab
    python3Full
    gnupg
    mangohud
    gzdoom
    wlprop
    mate.mate-polkit
    cinnamon.folder-color-switcher
    ioquake3
    nvtop-amd
    wlsunset
    pipes-rs
    qalculate-gtk
    cargo
    distrobox
    wf-recorder
    clonehero
    scanmem
    unzip
    bless
    monero-gui
    bottles-unwrapped
    woeusb-ng
    signal-desktop-beta
    qgnomeplatform-qt6
    qgnomeplatform
    gparted
    gnome-usage
    timeshift
    gnome.gnome-clocks
    gnome.gnome-sound-recorder
    wev
    clamav
    lutgen
    docker
    speedtest-cli
    gh
    gnome.gnome-calendar
    clamtk
    lazygit
    wireguard-tools
    kdenlive
    tor-browser
    neovim-unwrapped
    evince
    tailscale
    telegram-desktop
    android-studio
    android-tools
    samrewritten
    zathura
    nwg-dock-hyprland
    gnome.pomodoro
    ytui-music
    youtube-tui
    qrscan
    premid
    gpu-screen-recorder
    nixpkgs-fmt
    nix-update
    firewalld-gui
    element-desktop
    gtkcord4
    wine-staging
    nmap
    ntfs3g
    revolt-desktop
    parsec-bin
    amdgpu_top
    inxi
    satty
    nitch
    komikku
    rmg
    gnome-text-editor
    bleachbit
    netflix
    tailscale
    clipit
    ventoy-full
    ripcord
    r2modman
    # nomachine-client
    qutebrowser
    nheko
    cinnamon.nemo-with-extensions
    libsForQt5.dolphin
    nixpkgs-review
    evince
    yambar
    swappy
    bottom
    btop
    rustdesk
    moonlight-qt
    pulseaudioFull
    pinentry-qt
    sidequest
    nix-index
    monophony
    looking-glass-client
    libsForQt5.ark
    libsForQt5.dolphin
    zandronum
    aria
    jp2a
    deskreen
    nixpkgs-fmt
    p7zip
    wl-clipboard
    grim
    slurp
    gnome.file-roller
    zoom-us
    heroic
    upscayl
    wl-gammarelay-rs
    lmms
    mullvad-vpn
    impression

    # emu
    ryujinx
    cemu
    pcsx2
    duckstation
    rpcs3

    # Override Template
    
    # (pkgs.<package>.overrideAttrs {
    #   src = pkgs.fetchFromGitHub {
    #     owner = "";
    #     repo = "";
    #     rev = "";
    #     sha256 = "";
    #   };
    # })

    # Custom packages
    (callPackage ./pkgcustom/gpu-screen-recorder-gtk {})
    (callPackage ./pkgcustom/discover-overlay/default.nix {})
    (callPackage ./pkgcustom/hyprswitch {})
    (callPackage ./pkgcustom/video-downloader {})
    (callPackage ./pkgcustom/vinegar {})
    # (callPackage ./pkgcustom/lime3ds {})
    # (callPackage ./pkgcustom/roblox-fd {})
    # (callPackage ../pkgcustom/nexus-mods/package.nix {})
  ];

  # List of packages end here

  # scripts

  # Permitted Insecure Packages and Steam gamescope workaround found at: https://github.com/NixOS/nixpkgs/issues/162562#issuecomment-1523177264
  nixpkgs = {
    config = {
      permittedInsecurePackages = [
        "electron-25.9.0"
        "python-2.7.18.7"
        "electron-19.1.9"
      ];
      allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) ["davinci-resolve"];
      allowUnfree = true;
      allowBroken = true;
    };
  };
}
