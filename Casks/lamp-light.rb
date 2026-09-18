cask "lamp-light" do
  arch arm: "arm64", intel: "x64"

  version "1.2.17"
  sha256 arm:   "e44d5e1dbcb6a69053ee2411151ea29f412c90bee5738b22ee1e696d8c45b1b7",
         intel: "0c82d6192a6dbf2f47d33a9395f9db9b0feb9989fe663fd3b9fe3b8d65f481da"

  url "https://github.com/lioneltchami/Lamp-Light/releases/download/v#{version}/Lamp-Light-#{arch}.dmg",
      verified: "github.com/lioneltchami/Lamp-Light/"
  name "Lamp & Light"
  desc "Offline-first Bible trivia, reading, and practice"
  homepage "https://lamp-and-light.netlify.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Lamp Light.app"

  zap trash: [
    "~/Library/Application Support/bible-questions-app",
    "~/Library/Caches/org.lamplight.desktop",
    "~/Library/Preferences/org.lamplight.desktop.plist",
    "~/Library/Saved Application State/org.lamplight.desktop.savedState",
  ]
end
