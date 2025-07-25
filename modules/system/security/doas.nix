{
  lib,
  pkgs,
  userSettings,
  ...
}: {
  # Doas instead of sudo
  security.doas.enable = true;
  security.sudo.enable = lib.mkForce false;
  security.doas.extraRules = [
    {
      users = ["${userSettings.username}"];
      keepEnv = true;
      persist = true;
    }
    {
      users = ["${userSettings.username}"];
      cmd = "tomb";
      noPass = true;
    }
  ];

  environment.systemPackages = [
    (pkgs.writeScriptBin "sudo" ''exec doas "$@"'')
  ];
}
