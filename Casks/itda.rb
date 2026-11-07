cask "itda" do
  version "0.1.1"
  sha256 "88f3b6211a6420d11febf9bd0002692f84b97293e608a5a38518ab52e2af39ad"

  url "https://github.com/hrsong99/itda/releases/download/v#{version}/Itda.dmg"
  name "Itda"
  desc "Inline typing suggestions in Korean and English, from a local model"
  homepage "https://github.com/hrsong99/itda"

  auto_updates true
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Itda.app"

  uninstall quit: "app.itda.Itda"
  zap trash: [
    "~/Library/Application Support/Itda",
    "~/Library/Preferences/app.itda.Itda.plist",
  ]
end
