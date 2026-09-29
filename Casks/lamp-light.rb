cask "lamp-light" do
  arch arm: "arm64", intel: "x64"

  version "1.2.25"
  sha256 arm:   "4c56f5ee14dfd5734387f2bc4548bdc3e86ad7d5d6c5f97fd2d880d05fde790c",
         intel: "834ec07134f6715ae1a54f022ffc5285046151f16571bb5e4aa25c156955db6e"

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
