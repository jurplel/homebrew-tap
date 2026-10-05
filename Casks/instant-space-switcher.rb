cask "instant-space-switcher" do
  version "3.0"
  sha256 "7423a154663d838264354db4fa3364b5c2f5a2ec3da0257140cb78ee13710f04"

  url "https://github.com/jurplel/InstantSpaceSwitcher/releases/download/v#{version}/InstantSpaceSwitcher-#{version}.dmg"
  name "InstantSpaceSwitcher"
  desc "Native instant workspace switching"
  homepage "https://github.com/jurplel/InstantSpaceSwitcher"

  depends_on macos: :ventura

  app "InstantSpaceSwitcher.app"

  zap trash: "~/Library/Preferences/com.interversehq.InstantSpaceSwitcher.plist"
end
