cask "klew" do
  version "0.1.10"

  on_arm do
    sha256 "49cefdab325a5a8bc96be341e3dbea621d9c66d09af5f80e8eae9147b2fd6739"
    url "https://github.com/glnreddy421/klew/releases/download/v0.1.10/Klew-0.1.10-macos-arm64.zip"
  end
  on_intel do
    sha256 "fd9bdfff859855001315c0e52f74ac3bba63c25e5c2b10058ce0928dd85c999b"
    url "https://github.com/glnreddy421/klew/releases/download/v0.1.10/Klew-0.1.10-macos-amd64.zip"
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
