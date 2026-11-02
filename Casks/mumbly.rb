cask "mumbly" do
  version "1.1.9"
  sha256 "a57fef1bf1756cd55d748b639cb1ef4fa1751267c3415e579eee8a7cadc78736"

  url "https://github.com/lvecchi500-art/mumbly/releases/download/v#{version}/mumbly-#{version}.zip"
  name "mumbly"
  desc "Talk and it types what you meant; ask buddy about anything on your screen"
  homepage "https://heymumbly.com"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  auto_updates true

  app "mumbly.app"

  zap trash: [
    "~/Library/Application Support/LocalDictation",
    "~/Library/Preferences/dev.localdictation.app.plist",
  ]
end
