cask "klew" do
  version "1.5.0"

  on_arm do
    sha256 "3e8a704b9569301df100064071067a911dbf7755cdf76e13cbeb82baa2b8bec1"
    url "https://github.com/glnreddy421/klew/releases/download/v1.5.0/Klew-1.5.0-macos-arm64.zip"
  end
  on_intel do
    sha256 "95732b9dcb24a8989447792630210034ff4cd5e826a0cb5b7b1589f42a892e73"
    url "https://github.com/glnreddy421/klew/releases/download/v1.5.0/Klew-1.5.0-macos-amd64.zip"
  end

  name "Klew"
  desc "Live Kubernetes incident investigation (desktop app)"
  homepage "https://github.com/glnreddy421/klew"

  app "Klew.app"

  livecheck do
    url "https://github.com/glnreddy421/klew/releases/latest"
    strategy :github_latest
  end
end
