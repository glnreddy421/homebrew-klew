cask "klew" do
  version "0.1.8"

  on_arm do
    sha256 "e871860a6f49c1c0c0055ee48ae3c2fc21f26d63bd891d587fd931a5da3a4e44"
    url "https://github.com/glnreddy421/klew/releases/download/v0.1.8/Klew-0.1.8-macos-arm64.zip"
  end
  on_intel do
    sha256 "6fd7fe8f9951871b4fc3203ec116bf5497fc9c27d9e743b7ccaef71c675404ab"
    url "https://github.com/glnreddy421/klew/releases/download/v0.1.8/Klew-0.1.8-macos-amd64.zip"
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
