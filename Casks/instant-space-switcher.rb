cask "instant-space-switcher" do
  version "2.0"
  sha256 "e3c0c7d87bbf5e12cfafc8cfd80ae62c92c56c9988ba992b96a9453ac3672fb8"

  url "https://github.com/jurplel/InstantSpaceSwitcher/releases/download/v#{version}/InstantSpaceSwitcher-#{version}.dmg"
  name "InstantSpaceSwitcher"
  desc "Native instant workspace switching"
  homepage "https://github.com/jurplel/InstantSpaceSwitcher"

  depends_on macos: ">= :ventura"

  app "InstantSpaceSwitcher.app"

  zap trash: "~/Library/Preferences/com.interversehq.InstantSpaceSwitcher.plist"
end
