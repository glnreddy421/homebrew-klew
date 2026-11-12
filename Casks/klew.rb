cask "klew" do
  version "2.0.0"

  on_arm do
    sha256 "2ec12da02f990ae9dcc0ccbed6f707a7e9181eee0d7767ce73d56d0a42e4b47a"
    url "https://github.com/glnreddy421/klew/releases/download/v2.0.0/Klew-2.0.0-macos-arm64.zip"
  end
  on_intel do
    sha256 "8acc5dbf95162e9b1cfc4b08f749facb09082f8952e5239aac4f334414bcce21"
    url "https://github.com/glnreddy421/klew/releases/download/v2.0.0/Klew-2.0.0-macos-amd64.zip"
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
