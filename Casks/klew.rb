cask "klew" do
  version "0.1.9"

  on_arm do
    sha256 "5b26376edeb7e335f2628591f4f558bfc32494022c9a9e9e8238930c51f0dd4e"
    url "https://github.com/glnreddy421/klew/releases/download/v0.1.9/Klew-0.1.9-macos-arm64.zip"
  end
  on_intel do
    sha256 "c03a9eaec10fd7fb6f41463b4d3011e48aa2296ce888a4eb6b658888543b0c16"
    url "https://github.com/glnreddy421/klew/releases/download/v0.1.9/Klew-0.1.9-macos-amd64.zip"
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
