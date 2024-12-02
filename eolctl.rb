class Eolctl < Formula
    desc "eolctl is Go CLI tool that provide capabillities to query EOL information for varius of products. "
    homepage "https://github.com/asafdavid23/eolctl"
    url "https://github.com/asafdavid23/eolctl/archive/v1.1.2.tar.gz"
    sha256 "0e946cdfdcccb812b4432f91418f06f4ed4d431cea10a088a79dbe45850e6f82"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      ldflags = "-X 'eolctl/cmd.Version=#{version}"
      system "go", "build", *std_go_args(ldflags: ldflags)
    end
  
    test do
      system "#{bin}/eolctl", "--version"
    end
  end