{ ... }: {
  security.rtkit.enable = true;
  security.sudo.enable = true;
  # security.doas.enable = true;
  security.pam.services.swaylock = { };
  # security.doas.extraRules = [
  #   {
  #     keepEnv = true;
  #     persist = true;
  #   }
  # ];
}
