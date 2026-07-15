class Vdocker < Formula
  desc "Visualize Docker objects and their relationships in grouped/tree format"
  homepage "https://github.com/justperson94/vdocker"
  version "0.2.3"
  license "MIT"

  on_macos do
    url "https://github.com/justperson94/vdocker/releases/download/v0.2.3/vdocker-darwin-amd64"
    sha256 "024ecadd35efcab7efad5e263dbcfdc9fda49601a494d656b0a1f52b523b3010"
  end

  on_linux do
    url "https://github.com/justperson94/vdocker/releases/download/v0.2.3/vdocker-linux-amd64"
    sha256 "f39b387e0060bda949449e60d75eb27189b9ad3e6d9b6215744dc480962b7e2d"
  end

  def install
    bin.install Dir["*"].first => "vdocker"
  end

  test do
    assert_match "vdocker", shell_output("#{bin}/vdocker --version")
  end
end
