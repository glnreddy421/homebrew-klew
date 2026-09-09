cask "klew" do
  version "1.1.0"

  on_arm do
    sha256 "74b2b836f06ae5e1f18aab3731a71f7842f8ed648e14e8522d015500b034c02b"
    url "https://github.com/glnreddy421/klew/releases/download/v1.1.0/Klew-1.1.0-macos-arm64.zip"
  end
  on_intel do
    sha256 "e70c07bdd996799bd78e3e3a0aa4de7b4ac9ce00413e8faf41e93270050e636d"
    url "https://github.com/glnreddy421/klew/releases/download/v1.1.0/Klew-1.1.0-macos-amd64.zip"
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
