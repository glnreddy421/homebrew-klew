cask "klew" do
  version "1.3.2"

  on_arm do
    sha256 "656415d1f697e9de2835640f888573c8451b18247c4fe213644a1485600aa6c1"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.2/Klew-1.3.2-macos-arm64.zip"
  end
  on_intel do
    sha256 "05e0e552d0d974f53a252563c9ee128d9bcffc6647c574353dc99212d88beaf6"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.2/Klew-1.3.2-macos-amd64.zip"
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
