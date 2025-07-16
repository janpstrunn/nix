{pkgs, ...}: {
  imports = [
    ../display-server/x11.nix
    ../display-server/display-manager.nix
  ];
  services.xserver.windowManager.dwm.enable = true;
  environment.systemPackages = with pkgs; [
    dmenu
    st
  ];
}
