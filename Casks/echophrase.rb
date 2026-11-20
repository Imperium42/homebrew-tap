cask "echophrase" do
  version "0.9.9"
  sha256 "79eb335a316cc8a757ee6e7c906c0f08d965837c960a442693779616e70416d6"

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
