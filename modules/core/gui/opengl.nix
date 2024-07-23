{ pkgs, lib, ... }:
{
  hardware = {
    # opengl = lib.mkForce {
    #   enable = true;
    #   driSupport = true;
    #   driSupport32Bit = true;
    #   extraPackages = with pkgs; [
    #     rocm-opencl-icd
    #     rocm-opencl-runtime
    #   ];
    # };
    graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages = with pkgs; [
        rocm-opencl-icd
        rocm-opencl-runtime
      ];
    };
  };
}
