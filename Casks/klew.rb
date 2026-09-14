cask "klew" do
  version "1.3.1"

  on_arm do
    sha256 "37c82310085b6e32fbdd3e05e5f664ab9d52bb92e96a605f055228e0674456b5"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.1/Klew-1.3.1-macos-arm64.zip"
  end
  on_intel do
    sha256 "a58e7a5dcb2a55e5e6314079fe07bb57b38af750f194235c5f6376c5689706fb"
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
