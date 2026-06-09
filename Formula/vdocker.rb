class Vdocker < Formula
  desc "Visualize Docker objects and their relationships in grouped/tree format"
  homepage "https://github.com/justperson94/vdocker"
  version "0.2.2"
  license "MIT"

  on_macos do
    url "https://github.com/justperson94/vdocker/releases/download/v0.2.2/vdocker-darwin-amd64"
    sha256 "ccdc30bca04edc7c4d7dd1afa31129fab310efc3992af4e967b48f5a4187ed9a"
  end

  on_linux do
    url "https://github.com/justperson94/vdocker/releases/download/v0.2.2/vdocker-linux-amd64"
    sha256 "fc9e7fb569dbb31a2fd237ceecf9abb33102558cda8525408c5ee535f818a5a1"
  end

  def install
    bin.install Dir["*"].first => "vdocker"
  end

  test do
    assert_match "vdocker", shell_output("#{bin}/vdocker --version")
  end
end
