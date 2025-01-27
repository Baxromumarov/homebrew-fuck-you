class FuckYou < Formula
  desc "A description of your Go project"
  homepage "https://github.com/Baxromumarov/fuck-you"
  url "https://github.com/Baxromumarov/fuck-you/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "b4b16db913bb7a023149500c0db204721db10caf8cd644b023d2e28ed774a892"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/fuck-you --help")
  end
end