cask "focara" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "c11d9f6f783fe6ebff6dbb14a1456eee810ba0362693e41d5dcbdcd0de0bcdf0",
         intel: "fd476844b209d5f420b4a189cbc138c6933b60d8dfcc4a87beccdaee3f93d1e1"

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
