cask "mumbly" do
  version "1.1.8"
  sha256 "2ff90a92b334745d196e8e1313d12a9b5acbc4b96a310b19d34924bcf7a9a7dd"

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
