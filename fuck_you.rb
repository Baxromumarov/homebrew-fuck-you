class FuckYou < Formula
  desc "A description of your Go project"
  homepage "https://github.com/Baxromumarov/fuck-you"
  url "https://github.com/Baxromumarov/fuck-you/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT" # Or your project's license

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/fuck-you --help")
  end
end