class Vdocker < Formula
  desc "Visualize Docker objects and their relationships in grouped/tree format"
  homepage "https://github.com/justperson94/vdocker"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/justperson94/vdocker/releases/download/v0.5.0/vdocker-darwin-arm64.tar.gz"
      sha256 "d540b476b1453c8e463528e467754787a7402c72784c52c41c2dc4fa0e3b8c3b"
    end
  end

  on_linux do
    url "https://github.com/justperson94/vdocker/releases/download/v0.5.0/vdocker-linux-amd64.tar.gz"
    sha256 "99e454e70fc9f48b5e97fcf89f807688c104990e709535be8d9b11fdf092243c"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"vdocker"
  end

  test do
    assert_match "vdocker", shell_output("#{bin}/vdocker --version")
  end
end
