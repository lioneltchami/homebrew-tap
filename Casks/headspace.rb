cask "headspace" do
  version "2.0.2"
  sha256 "44e860f06a497b3051dcc8ac6da1dc5838215e3b6c5abcf48171508d47a43c8f"

  url "https://github.com/lioneltchami/Headspace/releases/download/v#{version}/Headspace-#{version}-arm64.dmg"
  name "Headspace"
  desc "Top-edge workspace for tasks, notes, links, recordings, and local AI alerts"
  homepage "https://github.com/lioneltchami/Headspace"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Headspace.app"

  zap trash: [
    "~/Library/Application Support/Headspace",
    "~/Library/Preferences/com.lioneltchami.headspace.plist",
    "~/Library/Saved Application State/com.lioneltchami.headspace.savedState",
  ]
end
