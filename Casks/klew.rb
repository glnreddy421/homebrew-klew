cask "klew" do
  version "1.3.1"

  on_arm do
    sha256 "ce3be309cae13b73a84619c3393fc8b0ce1e90f6321af3c473603aec5b3e2034"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.1/Klew-1.3.1-macos-arm64.zip"
  end
  on_intel do
    sha256 "84b4a3b3d2b3976f19e59e880d47f542ee2c399fbe44a5a9c1b861acfd29d0fc"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.1/Klew-1.3.1-macos-amd64.zip"
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
