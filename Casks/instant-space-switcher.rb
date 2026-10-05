cask "instant-space-switcher" do
  version "3.1"
  sha256 "aeccb6e35499700d4eb7f71d7d12b0ac59d1b427cb315f275ba1df03d9c9e5ea"

  url "https://github.com/jurplel/InstantSpaceSwitcher/releases/download/v#{version}/InstantSpaceSwitcher-#{version}.dmg"
  name "InstantSpaceSwitcher"
  desc "Native instant workspace switching"
  homepage "https://github.com/jurplel/InstantSpaceSwitcher"

  depends_on macos: :ventura

  app "InstantSpaceSwitcher.app"

  zap trash: "~/Library/Preferences/com.interversehq.InstantSpaceSwitcher.plist"
end
