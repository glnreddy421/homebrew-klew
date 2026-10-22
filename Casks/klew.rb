cask "klew" do
  version "1.4.0"

  on_arm do
    sha256 "0edbb2fd79e63674330b05d8d80a00543c22c71db3095dda0dccc688482567dd"
    url "https://github.com/glnreddy421/klew/releases/download/v1.4.0/Klew-1.4.0-macos-arm64.zip"
  end
  on_intel do
    sha256 "193382ff055d3e718f2fcf66cca57baa324ea524fbb12c3c242a9c108b5b4305"
    url "https://github.com/glnreddy421/klew/releases/download/v1.4.0/Klew-1.4.0-macos-amd64.zip"
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
