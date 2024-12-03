class Eolctl < Formula
    desc "eolctl is Go CLI tool that provide capabillities to query EOL information for varius of products. "
    homepage "https://github.com/asafdavid23/eolctl"
    url "https://github.com/asafdavid23/eolctl/archive/v1.1.3.tar.gz"
    sha256 "d21328a35197cc4be671156d887bf6e10bc9dc95431430e052d51bea3bd77cb3"
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