cask "lamp-light" do
  arch arm: "arm64", intel: "x64"

  version "1.2.20"
  sha256 arm:   "56934a10c1c72b23560454ce4006277801d406c444297da25eedf6ea1bfc728e",
         intel: "335643b3c74e08a42ed5cb63b4697e1c86858bfd26a141eaa1765a3f0f2af36b"

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
