cask "itda" do
  version "0.1.4"
  sha256 "122a5d8478df0899d863fecc4b5d7f1c3f80d02b6921a5a63b4d6fc443a4b8cd"

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
