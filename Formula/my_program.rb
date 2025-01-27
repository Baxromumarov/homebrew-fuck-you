class MyProgram < Formula
    desc "Description of your program"
    homepage "https://github.com/Baxromumarov/fuck-you"
    url "https://github.com/Baxromumarov/fuck-you/releases/download/v1.0.0/fuck_you.tar.gz" # URL to the tarball of the release
    sha256 "8c2724912df10c4d31b627db8d284772bb7507a63fdacb92331294509c168e3c"
  
    depends_on "go" => :build
  
    def install
      bin.install "fuck_you"
    end
  
    test do
      system "#{bin}/fuck_you", "--version"
    end
  end