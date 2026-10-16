cask "mumbly" do
  version "1.0.0"
  sha256 "cefc261b01cefec34e73c857315b08fa6888d56afe31731a416d57228c1a713a"

  url "https://github.com/lvecchi500-art/mumbly/releases/download/v#{version}/mumbly-#{version}.zip"
  name "mumbly"
  desc "Dictation that cleans up as you speak and runs on your Mac"
  homepage "https://heymumbly.com"

  livecheck do
    url "https://github.com/lvecchi500-art/mumbly/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "LocalDictation.app"

  # The app is signed by its own certificate, not notarized by Apple, so macOS would block a quarantined copy.
  # Same as the install script on heymumbly.com: clear the mark on the app this cask installed, nothing else.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/LocalDictation.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/LocalDictation",
    "~/Library/Application Support/FluidAudio",
    "~/Library/Preferences/dev.localdictation.app.plist",
  ]
end
