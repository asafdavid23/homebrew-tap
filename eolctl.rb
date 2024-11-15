class Eolctl < Formula
    desc "eolctl is Go CLI tool that provide capabillities to query EOL information for varius of products. "
    homepage "https://github.com/asafdavid23/eolctl"
    url "https://github.com/asafdavid23/eolctl/archive/v1.1.1.tar.gz"
    sha256 "54ba53de5a0a3b82961846e34bcae3d0f08022a8382ea20cabe6011ebf75fd6e"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args
    end
  
    test do
      system "#{bin}/eolctl", "--version"
    end
  end