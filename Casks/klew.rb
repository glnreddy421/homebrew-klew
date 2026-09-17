cask "klew" do
  version "1.3.3"

  on_arm do
    sha256 "22b30e7d5e354ad4d36d19ed094e4547f59c8fce6f81598b263b6ddf9f3465da"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.3/Klew-1.3.3-macos-arm64.zip"
  end
  on_intel do
    sha256 "8f7491e77c80c51a400babd5071b90f4712b4d4247648cc30d40758cca549c0f"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.3/Klew-1.3.3-macos-amd64.zip"
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
