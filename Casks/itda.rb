cask "itda" do
  version "0.1.2"
  sha256 "7db69e085637e169be7b1a9f61ce3a01ca4c6a5c298e0f612aa8fad96871545a"

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
