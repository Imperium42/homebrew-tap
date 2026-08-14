cask "echophrase" do
  version "0.8.0-beta.75"
  sha256 "a0496da31cca4ae0be9a6cd757a048c2a9a6c82d67a2e278f55294e4f1bdc9e5"

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
