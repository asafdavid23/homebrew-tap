class Eolctl < Formula
    desc "eolctl is Go CLI tool that provide capabillities to query EOL information for varius of products. "
    homepage "https://github.com/asafdavid23/eolctl"
    url "https://github.com/asafdavid23/eolctl/archive/v1.1.4.tar.gz"
    sha256 "d8217bfd3835b8b200b521efa59ff58a08df33333b461d7da66f540736f53dec"
    license "MIT"
  
  depends_on "go" => :build

  def install
    ldflags = "-X eolctl/cmd.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eolctl --version")
  end
end