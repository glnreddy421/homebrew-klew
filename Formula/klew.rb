class Klew < Formula
  desc "Klew — live Kubernetes incident investigation (desktop app)"
  homepage "https://github.com/glnreddy421/klew"
  license "Apache-2.0"
  version "0.1.5"
  revision 1

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/glnreddy421/klew/releases/download/v0.1.5/Klew-0.1.5-macos-arm64.zip"
      sha256 "160acedc97cc089fb24bcc9925d2f96c210eace4c733b0ab60506d7241e08b1d"
    end
  end

  def install
    app = if (buildpath/"Klew.app").directory?
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
