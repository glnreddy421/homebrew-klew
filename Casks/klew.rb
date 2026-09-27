cask "klew" do
  version "1.3.6"

  on_arm do
    sha256 "fce7f448726c076dd7a532a89045c32390eee2bb4aa97b4733c1824b4101230e"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.6/Klew-1.3.6-macos-arm64.zip"
  end
  on_intel do
    sha256 "62b35766a3fbd78c6ff1f9ca9a058c2cf03bb86cfd17eb2e3251c8196b3b7db2"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.6/Klew-1.3.6-macos-amd64.zip"
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
