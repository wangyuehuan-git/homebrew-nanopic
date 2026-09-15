class Nanopic < Formula
  desc "NanoPic CLI — batch image compression / conversion / resize / watermark"
  homepage "https://github.com/wangyuehuan-git/NanoPic"
  version "1.0.0"
  url "https://github.com/wangyuehuan-git/NanoPic/releases/download/v1.0.0/nanopic-1.0.0-universal.tar.gz"
  sha256 "7b4f87ebfbcb213035e65c3d3eb1c6a01e83f7933ca036848e02e7a53dd8c0ca"

  bottle do
    root_url "https://github.com/wangyuehuan-git/NanoPic/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, all: "0f16f75f98d0168b179f349f5efe869437ff75090304f13c226aa1b1fa2b9461"
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
