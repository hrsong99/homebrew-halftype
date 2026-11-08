cask "halftype" do
  version "0.1.7"
  sha256 "07844a6125e190fb206dfeec43a1a70faebc8f40998a453a177a7e6134a96f6d"

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
