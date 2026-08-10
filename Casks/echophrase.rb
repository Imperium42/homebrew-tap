cask "echophrase" do
  version "0.8.0-beta.74"
  sha256 "a19de0d919f01be2be8311fb813c32652ee5c9202339e1ab254969ee9af6a915"

  url "https://github.com/imperium42/echophrase-releases/releases/download/v#{version}/Echophrase_#{version}_aarch64.dmg"
  name "Echophrase"
  desc "Privacy-first local speech-to-text"
  homepage "https://echophrase.com/"

  livecheck do
    url "https://github.com/imperium42/echophrase-releases/releases"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura # app requires 13.3

  app "Echophrase.app"

  zap trash: [
    "~/Library/Application Support/com.imperium42.echophrase",
    "~/Library/Caches/com.imperium42.echophrase",
    "~/Library/Preferences/com.imperium42.echophrase.plist",
    "~/Library/Saved Application State/com.imperium42.echophrase.savedState",
  ]
end
