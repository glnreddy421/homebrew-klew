cask "klew" do
  version "1.2.0"

  on_arm do
    sha256 "04c9fd42b291a83f433bdf50ba60fffa3a0d71055f9b66360b195a95b8bcb3aa"
    url "https://github.com/glnreddy421/klew/releases/download/v1.2.0/Klew-1.2.0-macos-arm64.zip"
  end
  on_intel do
    sha256 "db4726745eb61585cba98d94a256a272a0e63fa0ecc263049f2d6a731fe37394"
    url "https://github.com/glnreddy421/klew/releases/download/v1.2.0/Klew-1.2.0-macos-amd64.zip"
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
