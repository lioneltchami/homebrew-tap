cask "lamp-light" do
  arch arm: "arm64", intel: "x64"

  version "1.2.22"
  sha256 arm:   "d6282226ae652d966efe9e17ceb96a769eda0bd3716873dcf0a22644b0aed860",
         intel: "ea96c8b558e33aa7a6b8e642958b8ae66b934dad1d5c75a41b3054a56eb683e9"

  url "https://github.com/lioneltchami/Lamp-Light/releases/download/v#{version}/Lamp-Light-#{arch}.dmg"
  name "Lamp & Light"
  desc "Offline-first Bible trivia, reading, and practice"
  homepage "https://lamp-and-light.netlify.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Lamp Light.app"

  zap trash: [
    "~/Library/Application Support/bible-questions-app",
    "~/Library/Caches/org.lamplight.desktop",
    "~/Library/Preferences/org.lamplight.desktop.plist",
    "~/Library/Saved Application State/org.lamplight.desktop.savedState",
  ]
end
