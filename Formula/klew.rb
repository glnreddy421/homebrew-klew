class Klew < Formula
  desc "Klew — live Kubernetes incident investigation (desktop app)"
  homepage "https://github.com/glnreddy421/klew"
  license "Apache-2.0"
  version "0.1.6"
  revision 1

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/glnreddy421/klew/releases/download/v0.1.6/Klew-0.1.6-macos-arm64.zip"
      sha256 "2d0f6bf1147f7cab65e5a7a8b28ed5feb425f0e70e826e29265f2d0c45dc11cf"
    end
    on_intel do
      url "https://github.com/glnreddy421/klew/releases/download/v0.1.6/Klew-0.1.6-macos-amd64.zip"
      sha256 "6076ed64c9e035745dd1c43f4308fabc81552c416eeaab110126c01033d2c695"
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
