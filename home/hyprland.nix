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
	"$mod ALT_L, L, exec, hyprlock"
	"$mod, h, movefocus, l"
	"$mod, j, movefocus, d"
	"$mod, k, movefocus, u"
	"$mod, l, movefocus, r"
	"$mod, 1, workspace, 1"
	"$mod, 2, workspace, 2"
	"$mod, 3, workspace, 3"
	"$mod, 4, workspace, 4"
	"$mod, 5, workspace, 5"
	"$mod, 6, workspace, 6"
	"$mod, 7, workspace, 7"
	"$mod, 8, workspace, 8"
	"$mod, 9, workspace, 9"
	"$mod, 0, workspace, 10"
	"$mod SHIFT, 1, movetoworkspace, 1"
	"$mod SHIFT, 2, movetoworkspace, 2"
	"$mod SHIFT, 3, movetoworkspace, 3"
	"$mod SHIFT, 4, movetoworkspace, 4"
	"$mod SHIFT, 5, movetoworkspace, 5"
	"$mod SHIFT, 6, movetoworkspace, 6"
	"$mod SHIFT, 7, movetoworkspace, 7"
	"$mod SHIFT, 8, movetoworkspace, 8"
	"$mod SHIFT, 9, movetoworkspace, 9"
	"$mod SHIFT, 0, movetoworkspace, 10"
      ];
      bindm = [
        "$mod, mouse:272, movewindow"
	"$mod, mouse:273, resizewindow"
      ];
    };
  };
}
