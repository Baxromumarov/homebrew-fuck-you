class FuckYou < Formula
  desc "A description of your Go project"
  homepage "https://github.com/Baxromumarov/homebrew-fuck-you"
  url "https://github.com/Baxromumarov/homebrew-fuck-you/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "fac489c9373368a09a66fd7e9f4763a784d8fdda7d9557b195152e85dc6af088"

  depends_on "go" => :build

  def install
    cd "cmd" do  
      system "go", "build", "-o", bin/"fuck_you", "."
    end
  end

  test do
    assert_match "Usage", shell_output("#{bin}/fuck_you --help")
  end
end