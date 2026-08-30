class Nanopic < Formula
  desc "NanoPic CLI — batch image compression / conversion / resize / watermark"
  homepage "https://github.com/wangyuehuan-git/NanoPic"
  version "1.0.0"
  url "https://github.com/wangyuehuan-git/NanoPic/releases/download/v1.0.0/nanopic-1.0.0-universal.tar.gz"
  sha256 "8e7b5e656b1814a7636bc356726063602448d3ffa2541733dd3e723063d0402b"

  bottle do
    root_url "https://github.com/wangyuehuan-git/NanoPic/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, all: "f7d13e9b7703e1dd65146e97d4ff6942efd59c338ca889fa2e748732b95b5ed9"
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
