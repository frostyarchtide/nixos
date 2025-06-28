{ config, ... }:

{
  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host github.com
        HostName github.com
        User git
        IdentityFile /home/frosty/.ssh/id_ed25519
        IdentitiesOnly yes

      Host work.github.com
        HostName github.com
        User git
        IdentityFile /home/frosty/.ssh/id_ed25519_work
        IdentitiesOnly yes
    '';
  };
}
