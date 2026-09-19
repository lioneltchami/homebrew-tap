cask "lamp-light" do
  arch arm: "arm64", intel: "x64"

  version "1.2.19"
  sha256 arm:   "239763b9b0d412f55eac07a2045fe585aab27f350de3c540cf2b0d6e3bc510b0",
         intel: "61e9db108affb56d9bec4c8770ad7689ae342c0ffe7b2e8cb9e1fbf3d86c7fe0"

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
