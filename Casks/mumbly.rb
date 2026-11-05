cask "mumbly" do
  version "0.1"
  sha256 "b7d77c44e09e1be53f394bc2db457dd1429b7681a0f254f3be79e6934461ed49"

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
