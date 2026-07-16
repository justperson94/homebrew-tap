class Vdocker < Formula
  desc "Visualize Docker objects and their relationships in grouped/tree format"
  homepage "https://github.com/justperson94/vdocker"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/justperson94/vdocker/releases/download/v0.3.0/vdocker-darwin-amd64.tar.gz"
    sha256 "8ca1fbb3c239ae2b0c2b6236290084ed93c68700e6b39024477375d39c3025a9"
  end

  on_linux do
    url "https://github.com/justperson94/vdocker/releases/download/v0.3.0/vdocker-linux-amd64.tar.gz"
    sha256 "53998124ba532683f50d37f12da922f72f4c642e73e984544624d15a1352c877"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"vdocker"
  end

  test do
    assert_match "vdocker", shell_output("#{bin}/vdocker --version")
  end
end
