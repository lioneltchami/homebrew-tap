cask "lamp-light" do
  arch arm: "arm64", intel: "x64"

  version "1.2.21"
  sha256 arm:   "ec982dbdbf800b94255f1c4c79ef070a3aa03556e25edd5de7e318344eedac35",
         intel: "105f54302be550f5b6aee777cc3da48cb52152810eb50939eeee423f776d5e83"

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
