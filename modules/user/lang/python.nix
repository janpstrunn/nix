{pkgs, ...}: {
  home.packages = with pkgs; [
    imath
    pystring
    python3Full
  ];
}
