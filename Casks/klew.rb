cask "klew" do
  version "2.0.0"

  on_arm do
    sha256 "ff60c5c1bff5045d50cab2d2842175e801ca6b99dfb6b2c47e4c2d0e136544fb"
    url "https://github.com/glnreddy421/klew/releases/download/v2.0.0/Klew-2.0.0-macos-arm64.zip"
  end
  on_intel do
    sha256 "3f1424816cad0c815a11bfd9dcc420d38c9bdc878988330938a55f521de557e5"
    url "https://github.com/glnreddy421/klew/releases/download/v2.0.0/Klew-2.0.0-macos-amd64.zip"
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
