cask "instant-space-switcher" do
  version "1.0"
  sha256 "1d6ce054df0d5eea734d20afca81556818280e3f68d54e4f011ae4d69ae8aa9c"

  url "https://github.com/jurplel/InstantSpaceSwitcher/releases/download/v#{version}/InstantSpaceSwitcher-#{version}.dmg"
  name "InstantSpaceSwitcher"
  desc "Native instant workspace switching"
  homepage "https://github.com/jurplel/InstantSpaceSwitcher"

  depends_on macos: ">= :ventura"

  app "InstantSpaceSwitcher.app"

  zap trash: "~/Library/Preferences/com.interversehq.InstantSpaceSwitcher.plist"
end
