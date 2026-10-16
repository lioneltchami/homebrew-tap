cask "focara" do
  arch arm: "arm64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "2683de1a72201bf8161db370efa6d1abb13730559acf9f3b143ce7642920f6e7",
         intel: "be40489b9a105023371aa3f9615a144c7bb6d1dec346fe1e56b3605dd9a50a71"

  url "https://github.com/lioneltchami/Focara/releases/download/v#{version}/Focara-#{version}-mac-#{arch}.dmg"
  name "Focara"
  desc "Screen recorder with automatic, editable zoom"
  homepage "https://github.com/lioneltchami/Focara"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Focara.app"
end
