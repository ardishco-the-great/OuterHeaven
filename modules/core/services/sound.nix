{ inputs, pkgs, ... }:
{
  # sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    jack.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    extraLv2Packages = with pkgs; [
      lsp-plugins
      rnnoise-plugin
    ];
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
    # lowLatency = {
    #   enable = true;
    #   quantum = 80;
    #   rate = 50000;
    # };
  };
}
