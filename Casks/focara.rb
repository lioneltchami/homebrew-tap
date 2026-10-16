cask "focara" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "74f914af10a218a1ae7113f164351879a5dc4c4c833361b13c2eca1283638f77",
         intel: "73ebd5b48e8f629ee399e2484d538abd130a2df01926cd5cbf20004f26d098d6"

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
