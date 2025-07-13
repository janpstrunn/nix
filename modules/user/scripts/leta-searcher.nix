{
  pkgs,
  leta-searcher,
  ...
}: {
  home.packages = [
    leta-searcher.packages.${pkgs.system}.default
  ];
}
