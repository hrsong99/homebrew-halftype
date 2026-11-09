cask "halftype" do
  version "0.1.14"
  sha256 "f2f8079898d1b64663e596cd64ef3c736bc98a18dbbe7f46ff1486b89f2341c6"

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
