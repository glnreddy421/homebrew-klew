cask "klew" do
  version "1.3.5"

  on_arm do
    sha256 "665f6d1124c3ab04307f4e2acf131cd5c591692fe008cf9e278c41ec019e7708"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.5/Klew-1.3.5-macos-arm64.zip"
  end
  on_intel do
    sha256 "a002a2654e0b5b3b595237f853d32dfdf6039c5b469ef280a1caef49ed855d83"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.5/Klew-1.3.5-macos-amd64.zip"
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
