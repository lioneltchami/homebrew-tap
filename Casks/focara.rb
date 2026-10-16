cask "focara" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "0bd99377447019522a56c18807cce9f6f9ad36c2c14655050623b3295c10367e",
         intel: "a22aea76a9b62587582c806d38e85e380790793e7e323b722beb8cae58833edb"

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
