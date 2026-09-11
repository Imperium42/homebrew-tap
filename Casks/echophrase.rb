cask "echophrase" do
  version "0.9.3"
  sha256 "89d4aeffec4662c9b7d7cda02ff7b4d5246adf9dc1ff11fd661cc092c37d9795"

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
