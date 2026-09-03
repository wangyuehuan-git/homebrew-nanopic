class Nanopic < Formula
  desc "NanoPic CLI — batch image compression / conversion / resize / watermark"
  homepage "https://github.com/wangyuehuan-git/NanoPic"
  version "1.0.0"
  url "https://github.com/wangyuehuan-git/NanoPic/releases/download/v1.0.0/nanopic-1.0.0-universal.tar.gz"
  sha256 "002d5fa2eb53ec5a4782694163fcda0414df61a473926f87c634b078cc9e3867"

  bottle do
    root_url "https://github.com/wangyuehuan-git/NanoPic/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, all: "7bcc62269a98b02837b59d68ac286c5736d48cce061bb17f784ba48619eff58a"
  end

  def install
    bin.install "nanopic"
  end

  def caveats
    <<~EOS
      The binary is notarized but not stapled (bare Mach-O limitation);
      first run requires network for Gatekeeper notarization check.
    EOS
  end

  test do
    assert_match "nanopic", shell_output("#{bin}/nanopic --version")
  end
end
