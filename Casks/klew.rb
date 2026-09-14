cask "klew" do
  version "1.3.1"

  on_arm do
    sha256 "736c03814bef67bcfc3418c9059fcf7ec2a57ecb3f293e290d0806166835a506"
    url "https://github.com/glnreddy421/klew/releases/download/v1.3.1/Klew-1.3.1-macos-arm64.zip"
  end
  on_intel do
    sha256 "4ef283975c7f5fe3bb918a9a79c07c579820951d76893364d5772a2d0c2b4f35"
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
