cask "klew" do
  version "0.1.7"

  on_arm do
    sha256 "e58498eed05c9cc7711c8728c4c1cf7232164d51f3af63583e95c7e5abfb7382"
    url "https://github.com/glnreddy421/klew/releases/download/v0.1.7/Klew-0.1.7-macos-arm64.zip"
  end
  on_intel do
    sha256 "86f659ea4e8abb826b43cd55a879a23bd235b90298df88484b49848adbc3d807"
    url "https://github.com/glnreddy421/klew/releases/download/v0.1.7/Klew-0.1.7-macos-amd64.zip"
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
