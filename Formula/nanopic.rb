class Nanopic < Formula
  desc "NanoPic CLI — batch image compression / conversion / resize / watermark"
  homepage "https://github.com/wangyuehuan-git/NanoPic"
  version "1.0.0"
  url "https://github.com/wangyuehuan-git/NanoPic/releases/download/v1.0.0/nanopic-1.0.0-universal.tar.gz"
  sha256 "5855ecc0c6a6aa273f1d222e30fdc4d144880c7d7d87fdd1d6026f94f74d4637"

  bottle do
    root_url "https://github.com/wangyuehuan-git/NanoPic/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, all: "bc55b1b255ae0575fa537b01e5717380650d2332a44b28ee70204f53322de600"
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
