cask "itda" do
  version "0.1.5"
  sha256 "4366aec6e2988fefb37e4571275e0d7d92ffe9e6f0670a643b19256b483252bf"

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
