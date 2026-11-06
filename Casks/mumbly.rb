cask "mumbly" do
  version "0.1.11"
  sha256 "6fbe1dbe0f364168ff85c7313128cfee4ab5f852d3c1330edff7d442abb919eb"

  url "https://github.com/lvecchi500-art/mumbly/releases/download/v#{version}/mumbly-#{version}.zip"
  name "mumbly"
  desc "The screen is your whiteboard: talk, and it types, teaches or gets it done"
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
