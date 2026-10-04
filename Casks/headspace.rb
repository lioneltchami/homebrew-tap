cask "headspace" do
  version "2.0.0"
  sha256 "ab027dac27749f527510f175fc846728962db6d57f977c48135d6de50e3c0d68"

  url "https://github.com/lioneltchami/Headspace/releases/download/v#{version}/Headspace-#{version}-arm64.dmg"
  name "Headspace"
  desc "Top-edge workspace for tasks, notes, links, recordings, and local AI alerts"
  homepage "https://github.com/lioneltchami/Headspace"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Headspace.app"

  zap trash: [
    "~/Library/Application Support/Headspace",
    "~/Library/Preferences/com.lioneltchami.headspace.plist",
    "~/Library/Saved Application State/com.lioneltchami.headspace.savedState",
  ]
end
