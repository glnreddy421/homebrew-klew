class KlewCli < Formula
  desc "Kubernetes incident investigation, with a read-only MCP server"
  homepage "https://github.com/glnreddy421/klew"
  version "2.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/glnreddy421/klew/releases/download/v2.0.0/klew-cli-2.0.0-darwin-arm64.tar.gz"
      sha256 "8f49300cd57d3127b8a2c198c3a49c177ee85fcd49c056ce606b7df4ea034103"
    end
    on_intel do
      url "https://github.com/glnreddy421/klew/releases/download/v2.0.0/klew-cli-2.0.0-darwin-amd64.tar.gz"
      sha256 "030205e4613387d0d857f9be29e9462aa3d0e59328237605f2c1cef1dd2d5229"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/glnreddy421/klew/releases/download/v2.0.0/klew-cli-2.0.0-linux-arm64.tar.gz"
      sha256 "79b00604707930dd7b1977d2095791b6711426f09d097615ae64ba07c7ddfd3c"
    end
    on_intel do
      url "https://github.com/glnreddy421/klew/releases/download/v2.0.0/klew-cli-2.0.0-linux-amd64.tar.gz"
      sha256 "6b6e278a589700e84d49c4b4ecd76b200f4f48dac195d2fd1b516e76bf973da3"
    end
  end

  def install
    bin.install "klew"
  end

  def caveats
    <<~EOS
      Investigate a namespace:
        klew investigate -n NAMESPACE
      Add it to Claude Code:
        claude mcp add --scope user klew -- "$(command -v klew)" mcp
      More: https://github.com/glnreddy421/klew/blob/main/docs/cli.md
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klew version")
  end
end
