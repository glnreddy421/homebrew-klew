cask "klew" do
  version "1.0.0"

  on_arm do
    sha256 "79965e711869eb73efb6c80b8366c6478e7461a3e5b34f7568ef6c4c6dca5118"
    url "https://github.com/glnreddy421/klew/releases/download/v1.0.0/Klew-1.0.0-macos-arm64.zip"
  end
  on_intel do
    sha256 "ed262121120402a003970747e8e65986c606686cdf9671cabaa8fe7163d985b8"
    url "https://github.com/glnreddy421/klew/releases/download/v1.0.0/Klew-1.0.0-macos-amd64.zip"
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
