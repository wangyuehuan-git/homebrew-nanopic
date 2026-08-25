class Nanopic < Formula
  desc "NanoPic CLI — batch image compression / conversion / resize / watermark"
  homepage "https://github.com/wangyuehuan-git/NanoPic"
  version "1.0.0"
  url "https://github.com/wangyuehuan-git/NanoPic/releases/download/v1.0.0/nanopic-1.0.0-universal.tar.gz"
  sha256 "f0f947301b89945135ae807fd88912c4a4b1be512940a5ea55afba407207a129"

  bottle do
    root_url "https://github.com/wangyuehuan-git/NanoPic/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, all: "2de7ac3010bd66856974633227fed14d98a1917a394fda578aca45cdcd46f0b9"
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
