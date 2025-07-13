{pkgs, ...}: {
  home.packages = with pkgs; [
    autoconf
    automake
    # cmake
    gcc
    gnumake
    libtool
  ];
}
