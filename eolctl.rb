class Eolctl < Formula
    desc "eolctl is Go CLI tool that provide capabillities to query EOL information for varius of products. "
    homepage "https://github.com/asafdavid23/eolctl"
    url "https://github.com/asafdavid23/eolctl/archive/v1.1.0.tar.gz"
    sha256 "d42a654f37db3860d059fde08b7851b72906b82e3152691a77b2f15021fb007c"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args
    end
  
    test do
      system "#{bin}/eolctl", "--version"
    end
  end