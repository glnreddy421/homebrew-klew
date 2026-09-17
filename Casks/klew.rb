cask "klew" do
  version "1.3.5"

  on_arm do
    sha256 "56f4ff35ecf002179d97ee12a1c1d23641fc25adadccf7c0c837145515cb3b4d"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.5/Klew-1.3.5-macos-arm64.zip"
  end
  on_intel do
    sha256 "a264e45d7cb57ff0a69612f004d54c6a86ffdfa64061661f41d988edc7b8f285"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.5/Klew-1.3.5-macos-amd64.zip"
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
