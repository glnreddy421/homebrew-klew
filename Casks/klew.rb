cask "klew" do
  version "1.4.1"

  on_arm do
    sha256 "8cd98aa2663abd21215c4af56854a0d3d315b4f1601916a3787f692473be4c6e"
    url "https://github.com/glnreddy421/klew/releases/download/v1.4.1/Klew-1.4.1-macos-arm64.zip"
  end
  on_intel do
    sha256 "24fe1d6e764e06631fb03bfe2e38b97d5ecac7c24bc3c830fc91bb47f63bc174"
    url "https://github.com/glnreddy421/klew/releases/download/v1.4.1/Klew-1.4.1-macos-amd64.zip"
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
