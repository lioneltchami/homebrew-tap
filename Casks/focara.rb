cask "focara" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "ae11e14c31dc0f405ee2e9710655b0e1631451e7a7b42eff90dfced1780c84a1",
         intel: "38542caa9f5471cf916f067814d03399b85449ae2a87d1fb6715641cfe6db2a0"

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

  caveats <<~EOS
    Focara is not signed or notarized yet. On first launch, use System Settings > Privacy & Security > Open Anyway.
  EOS
end
