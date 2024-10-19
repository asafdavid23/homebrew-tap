class Eolctl < Formula
    desc "eolctl is Go CLI tool that provide capabillities to query EOL information for varius of products. "
    homepage "https://github.com/asafdavid23/eolctl"
    url "https://github.com/asafdavid23/eolctl/archive/v1.0.1.tar.gz"
    sha256 "f4d481eea244506e04eb89c29b6c478980a0ab6c5f671a7a7931465fea479f56"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args
    end
  
    test do
      system "#{bin}/eolctl", "--version"
    end
  end