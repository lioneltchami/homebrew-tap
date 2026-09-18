cask "lamp-light" do
  arch arm: "arm64", intel: "x64"

  version "1.2.18"
  sha256 arm:   "666f8a5d10629c3c6dfc47eecda519273bdc313bb33a843f90a8fe7fa283a62b",
         intel: "c51df43219d21005b470cefdebf684bf936503b73d1970d647ad0ac53cf9d86c"

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
