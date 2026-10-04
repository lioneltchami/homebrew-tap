cask "headspace" do
  version "2.0.1"
  sha256 "3d967d2235c6e804e23720a949e1bb0c0f05c4b4dfea0254a24ef57a95a895ac"

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
