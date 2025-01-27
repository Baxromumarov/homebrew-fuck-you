class FuckYou < Formula
  desc "A description of your Go project"
  homepage "https://github.com/Baxromumarov/fuck-you"
  url "https://github.com/Baxromumarov/fuck-you/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "db3c98b0484863334ef28829e5da42a2195de1b1daf0e482e931e3e79e8f91ba"
  license "MIT" # Or your project's license

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/fuck-you --help")
  end
end