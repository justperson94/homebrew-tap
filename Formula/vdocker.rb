class Vdocker < Formula
  desc "Visualize Docker objects and their relationships in grouped/tree format"
  homepage "https://github.com/justperson94/vdocker"
  version "0.4.0"
  license "MIT"

  on_macos do
    url "https://github.com/justperson94/vdocker/releases/download/v0.4.0/vdocker-darwin-amd64.tar.gz"
    sha256 "c7ac3d64bf05b668365c8f9ff39176545b90b8f43190130cfdafbd438f40873e"
  end

  on_linux do
    url "https://github.com/justperson94/vdocker/releases/download/v0.4.0/vdocker-linux-amd64.tar.gz"
    sha256 "03b8238d259566a4a07286e5106bb0474292bd7401dead6d3e00b37c53b06d72"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"vdocker"
  end

  test do
    assert_match "vdocker", shell_output("#{bin}/vdocker --version")
  end
end
