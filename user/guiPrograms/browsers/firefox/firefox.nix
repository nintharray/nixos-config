{ pkgs, inputs, ... }:
let
  lock-false = {
    Value = false;
    Status = "locked";
  };
  lock-true = {
    Value = true;
    Status = "locked";
  };
in 
{
  # TODO: set default search to DuckDuckGo.
  # this is non-trivial due to Firefox protecting search engine configs
  # from malicious plugins. 
  # need to figure out how to write and encode the data to the file
  # ~/.mozilla/firefox/$(INSERT_PROFILE_HERE)/search.json.mozlz4
  # from this config.

  programs.firefox = {
    enable = true;
    profiles.n8 = {
      id = 0;
      name = "my profile";
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
        multi-account-containers
        bitwarden
        clearurls
        decentraleyes
        leechblock-ng
        old-reddit-redirect
        ublock-origin
        sponsorblock
        youtube-shorts-block
        return-youtube-dislikes
      ];
      bookmarks = [
        {
          name = "YouTube";
          tags = [];
          keyword = "";
          url = "https://www.youtube.com/feed/subscriptions";
        }
      ];
      settings = {
        # Performance settings
        "gfx.webrender.all" = true; # Force enable GPU acceleration
        "media.ffmpeg.vaapi.enabled" = true;
        "widget.dmabuf.force-enabled" = true; # Required in recent Firefoxes

        # Keep the reader button enabled at all times
        "reader.parse-on-load.force-enabled" = true;

        # Hide the "sharing indicator"
        "privacy.webrtc.legacyGlobalIndicator" = false;

        "app.shield.optoutstudies.enabled" = false;
        "app.update.auto" = false;
        "browser.aboutConfig.showWarning" = false;
        "browser.bookmarks.restore_default_bookmarks" = false;
        "browser.contentblocking.category" = "strict";
        "browser.ctrlTab.recentlyUsedOrder" = false;
        "browser.discovery.enabled" = false;
        "browser.laterrun.enabled" = false;

        # remove top sites and stories from new tab page
        "browser.newtabpage.activity-stream.feeds.topsites" = false;
        "browser.newtabpage.activity-stream.feeds.section.topstories" = false;

        "browser.newtabpage.activity-stream.showSponsored" = false;
        "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;

        "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons" =
          false;
        "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features" =
          false;

        "browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts" = false;
        "browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.havePinned" = "";
        "browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.searchEngines" = "";
        "browser.newtabpage.activity-stream.section.highlights.includePocket" = false;

        "browser.newtabpage.pinned" = false;
        "browser.protections_panel.infoMessage.seen" = true;
        # "browser.quitShortcut.disabled" = true;
        "browser.shell.checkDefaultBrowser" = false;
        # "browser.ssb.enabled" = true;
        "browser.toolbars.bookmarks.visibility" = "always";
        # "browser.urlbar.placeholderName" = "DuckDuckGo";
        "browser.urlbar.suggest.openpage" = false;
        "datareporting.policy.dataSubmissionEnable" = false;
        "datareporting.policy.dataSubmissionPolicyAcceptedVersion" = 2;
        "dom.security.https_only_mode" = true;
        "dom.security.https_only_mode_ever_enabled" = true;
        "extensions.getAddons.showPane" = false;
        "extensions.htmlaboutaddons.recommendations.enabled" = false;
        "extensions.pocket.enabled" = false;
        "identity.fxaccounts.enabled" = false;
        "privacy.trackingprotection.enabled" = true;
        "privacy.trackingprotection.socialtracking.enabled" = true;

        # disable picture-in-picture popup
        "media.videocontrols.picture-in-picture.video-toggle.enabled" = false;
      };
    };
  };
}
