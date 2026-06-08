class Vdocker < Formula
  desc "Visualize Docker objects and their relationships in grouped/tree format"
  homepage "https://github.com/justperson94/vdocker"
  version "0.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/justperson94/vdocker/releases/download/v0.2.1/vdocker-darwin-amd64"
    sha256 "6fb48b315ab8f48a1d40f29f52f9ce1507ff7495e857149fc50a4aef7d8bb7eb"
  end

  on_linux do
    url "https://github.com/justperson94/vdocker/releases/download/v0.2.1/vdocker-linux-amd64"
    sha256 "acbf2b875d6c88c07738403d73a967ee934131fdc7f246d551e9b979aef9fe42"
  end

  def install
    bin.install Dir["*"].first => "vdocker"
  end

  test do
    assert_match "vdocker", shell_output("#{bin}/vdocker --version")
  end
end
