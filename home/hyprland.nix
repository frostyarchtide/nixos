{ config, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = [
        "DP-1, 3440x1440@60, 0x0, 1"
	"eDP-1, disable"
      ];
      "$mod" = "SUPER";
      decoration = {
        "rounding" = "8";
	shadow = {
	  "enabled" = "true";
	  "range" = "4";
	};
      };
      misc = {
        "force_default_wallpaper" = "0";
	"disable_hyprland_logo" = "true";
      };
      bind = [
        "$mod, Q, exec, kitty"
	"$mod, C, killactive"
	"$mod, M, exit"
	"$mod, D, exec, fuzzel"
	"$mod, L, exec, hyprlock"
      ];
    };
  };
}
