class Vdocker < Formula
  desc "Visualize Docker objects and their relationships in grouped/tree format"
  homepage "https://github.com/justperson94/vdocker"
  version "0.2.3"
  license "MIT"

  on_macos do
    url "https://github.com/justperson94/vdocker/releases/download/v0.2.3/vdocker-darwin-amd64"
    sha256 "c59c95a0dcc77786efda98acb8a98c28984c78ba33dfa4fb578b425b0a7d6ec4"
  end

  on_linux do
    url "https://github.com/justperson94/vdocker/releases/download/v0.2.3/vdocker-linux-amd64"
    sha256 "cf749d0caa42c9758c34f1bc45e9f175c0a7b4b3fe43ef3a40927b423db96653"
  end

  def install
    bin.install Dir["*"].first => "vdocker"
  end

  test do
    assert_match "vdocker", shell_output("#{bin}/vdocker --version")
  end
end
