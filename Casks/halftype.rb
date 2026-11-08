cask "halftype" do
  version "0.1.8"
  sha256 "17a9b7798c53d3a94e6203455e8bed39ad9f100c839c23d82dd1dd1b651f27b2"

  url "https://github.com/hrsong99/halftype/releases/download/v#{version}/Halftype.dmg"
  name "Halftype"
  desc "Inline typing suggestions in Korean and English, from a local model"
  homepage "https://github.com/hrsong99/halftype"

  auto_updates true
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Halftype.app"

  uninstall quit: "app.halftype.Halftype"
  zap trash: [
    "~/Library/Application Support/Halftype",
    "~/Library/Preferences/app.halftype.Halftype.plist",
  ]
end
