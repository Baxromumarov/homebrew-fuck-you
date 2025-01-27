class FuckYou < Formula
  desc "A description of your Go project"
  homepage "https://github.com/Baxromumarov/fuck-you"
  url "https://github.com/Baxromumarov/fuck-you/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "bf71991a2bd0f0a9605042369390392c080f97b1da70e759946d48e87bc75f3a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/fuck-you --help")
  end
end