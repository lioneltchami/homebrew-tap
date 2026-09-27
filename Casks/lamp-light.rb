cask "lamp-light" do
  arch arm: "arm64", intel: "x64"

  version "1.2.23"
  sha256 arm:   "167f1dbe2b49849cc9f85ee47a54d1a7966733e9c0191c187ec266db40dafcc8",
         intel: "f6c90a1f58f73a90e7fbb848ed90eb57d2130e62350c5c16e02f0d28cc7c3040"

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
