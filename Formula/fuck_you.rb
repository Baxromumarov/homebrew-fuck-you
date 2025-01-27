class FuckYou < Formula
  desc "A description of your Go project"
  homepage "https://github.com/Baxromumarov/homebrew-fuck-you"
  url "https://github.com/Baxromumarov/homebrew-fuck-you/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "7e1afb2077cae2fdd62f751803cd6c8d21fe5f292c4c1b40c22b910d2f27c38d"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/fuck-you --help")
  end
end