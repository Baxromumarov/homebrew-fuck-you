class FuckYou < Formula
  desc "A description of your Go project"
  homepage "https://github.com/Baxromumarov/fuck-you"
  url "https://github.com/Baxromumarov/fuck-you/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "10cf90a73b1f746965f9d0ef1d0a778bf3f5c9a0e2cd7b24962e9791a9753bb0"
  license "MIT" # Or your project's license

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/fuck-you --help")
  end
end