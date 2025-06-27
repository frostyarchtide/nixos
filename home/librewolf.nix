{ config, ... }:

{
  programs.librewolf = {
    enable = true;
    settings = {
      "browser.urlbar.suggest.bookmark" = false;
      "browser.urlbar.suggest.engines" = false;
      "browser.urlbar.suggest.history" = false;
      "browser.urlbar.suggest.openpage" = false;
      "browser.urlbar.suggest.recentsearches" = false;
      "browser.urlbar.suggest.topsites" = false;
      "privacy.resistFingerprinting" = false;
      "webgl.disabled" = false;
      "privacy.clearOnShutdown_v2.cookiesAndStorage" = false;
      "privacy.sanitize.clearOnShutdown.hasMigratedToNewPrefs3" = true;
      "browser.download.useDownloadDir" = true;
      "browser.newtabpage.activity-stream.showSearch" = false;
      "layout.css.prefers-color-scheme.content-override" = 0;
      "extensions.activeThemeID" = "firefox-compact-dark@mozilla.org";
      "security.OCSP.require" = false;
    };
  };
}
