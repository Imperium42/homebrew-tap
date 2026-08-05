cask "echophrase" do
  version "0.8.0-beta.71"
  sha256 "f24ed1c7ebaf1c59be35ab6f4d99d0494091e345775f65bb3a9f3fda02ce417e"

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
