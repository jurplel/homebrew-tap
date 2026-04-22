cask "instant-space-switcher" do
  version "2.0"
  sha256 "e3c0c7d87bbf5e12cfafc8cfd80ae62c92c56c9988ba992b96a9453ac3672fb8"

  url "https://github.com/jurplel/InstantSpaceSwitcher/releases/download/v#{version}/InstantSpaceSwitcher-#{version}.dmg"
  name "InstantSpaceSwitcher"
  desc "Native instant workspace switching"
  homepage "https://github.com/jurplel/InstantSpaceSwitcher"

  depends_on macos: ">= :ventura"

  app "InstantSpaceSwitcher.app"

  postflight do
    ohai "Releasing #{token} from quarantine"
    system_command("/usr/bin/xattr",
                   args: [
                     "-dr",
                     "com.apple.quarantine",
                     "#{appdir}/InstantSpaceSwitcher.app",
                   ])
  end

  zap trash: "~/Library/Preferences/com.interversehq.InstantSpaceSwitcher.plist"

  caveats <<~EOS
    Warning: macOS's Gatekeeper has been disabled for this Cask

    According to the vendor, the Gatekeeper quarantine attribute breaks the app and needs to be removed. This Cask, `#{token}`, automatically removes the quarantine attribute. No further action is required.

    For more information:
    - https://docs.brew.sh/FAQ#why-cant-i-open-a-mac-app-from-an-unidentified-developer
  EOS
end
