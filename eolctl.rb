class Eolctl < Formula
    desc "eolctl is Go CLI tool that provide capabillities to query EOL information for varius of products. "
    homepage "https://github.com/asafdavid23/eolctl"
    url "https://github.com/asafdavid23/eolctl/archive/v1.0.2.tar.gz"
    sha256 "58c71ab411e9ba171ba3b57fe2098a482c3c4243fd17b8d66cb5ac3093f7d855"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args
    end
  
    test do
      system "#{bin}/eolctl", "--version"
    end
  end