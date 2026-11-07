cask "itda" do
  version "0.1.0"
  sha256 "116c6249e07c14bf4172868dcd464f43dfce268ddd4ef7fd1d33b9233613963a"

  url "https://github.com/hrsong99/itda/releases/download/v#{version}/Itda.dmg"
  name "Itda"
  desc "Inline typing suggestions in Korean and English, from a local model"
  homepage "https://github.com/hrsong99/itda"

  auto_updates true
  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "Itda.app"

  uninstall quit: "app.itda.Itda"
  zap trash: [
    "~/Library/Application Support/Itda",
    "~/Library/Preferences/app.itda.Itda.plist",
  ]
end
