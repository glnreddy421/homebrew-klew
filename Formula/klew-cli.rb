class KlewCli < Formula
  desc "Kubernetes incident investigation, with a read-only MCP server"
  homepage "https://github.com/glnreddy421/klew"
  version "2.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/glnreddy421/klew/releases/download/v2.0.0/klew-cli-2.0.0-darwin-arm64.tar.gz"
      sha256 "65fa775b3d8f9f47d972a164d36ad3488def6010594b1f6cfc90f9f288080853"
    end
    on_intel do
      url "https://github.com/glnreddy421/klew/releases/download/v2.0.0/klew-cli-2.0.0-darwin-amd64.tar.gz"
      sha256 "11ffa8682b2518733eb92e861bb58760b27e047091d4a3a6bed060b4efe3502c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/glnreddy421/klew/releases/download/v2.0.0/klew-cli-2.0.0-linux-arm64.tar.gz"
      sha256 "d865b3b2781d369ebf5cafe2f8faac614e76d120ae95b1def2c93a62872a308e"
    end
    on_intel do
      url "https://github.com/glnreddy421/klew/releases/download/v2.0.0/klew-cli-2.0.0-linux-amd64.tar.gz"
      sha256 "a2b57e096916db3e8bdc01d20c6b1fbcb9ff3d08fdc11f22165ebb15133fada4"
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
