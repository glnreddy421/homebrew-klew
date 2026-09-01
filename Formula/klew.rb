class Klew < Formula
  desc "Klew — live Kubernetes incident investigation (desktop app)"
  homepage "https://github.com/glnreddy421/klew"
  license "Apache-2.0"
  version "0.1.7"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/glnreddy421/klew/releases/download/v0.1.7/Klew-0.1.7-macos-arm64.zip"
      sha256 "e58498eed05c9cc7711c8728c4c1cf7232164d51f3af63583e95c7e5abfb7382"
    end
    on_intel do
      url "https://github.com/glnreddy421/klew/releases/download/v0.1.7/Klew-0.1.7-macos-amd64.zip"
      sha256 "86f659ea4e8abb826b43cd55a879a23bd235b90298df88484b49848adbc3d807"
    end
  end

  def install
    app = if (buildpath/"Contents/MacOS").directory?
      buildpath
    elsif (buildpath/"Klew.app").directory?
      buildpath/"Klew.app"
    else
      buildpath.glob("*.app").first
    end
    odie "Klew.app not found under #{buildpath}" unless app&.directory?

    cp_r app, prefix/"Klew.app"
    # Homebrew sandbox metadata breaks the signed app bundle seal.
    rm_rf prefix/"Klew.app/.brew_home"
  end

  def caveats
    <<~EOS
      Klew.app is installed at:
        #{prefix}/Klew.app

      Launch from Finder or run:
        open #{prefix}/Klew.app
    EOS
  end

  test do
    assert_path_exists prefix/"Klew.app"
    assert_path_exists prefix/"Klew.app/Contents/MacOS/Klew"
    system "codesign", "--verify", "--deep", "--strict", prefix/"Klew.app"
  end
end
