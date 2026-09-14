cask "klew" do
  version "1.3.0"

  on_arm do
    sha256 "44f6f6ecf68dd01027501d0979344a2a080820a56ba730483aad962dff3c5881"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.0/Klew-1.3.0-macos-arm64.zip"
  end
  on_intel do
    sha256 "6f05dd944158aed077d9b7deecba01588129a2284586f3d38351743b06b2e9d8"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.0/Klew-1.3.0-macos-amd64.zip"
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
