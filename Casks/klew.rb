cask "klew" do
  version "1.3.4"

  on_arm do
    sha256 "951bf39cdb5fb983706db70134827df138f8298eb54f09ff1f0b026a4c00dc47"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.4/Klew-1.3.4-macos-arm64.zip"
  end
  on_intel do
    sha256 "2c38060cdd6697999977a54a4f16e3308298a1405ae74825443e491831e3ccaf"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.4/Klew-1.3.4-macos-amd64.zip"
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
