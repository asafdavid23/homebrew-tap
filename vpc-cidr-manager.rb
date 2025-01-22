class Eolctl < Formula
    desc "eolctl is Go CLI tool that provide capabillities to query EOL information for varius of products. "
    homepage "https://github.com/asafdavid23/vpc-cidr-manager"
    url "https://github.com/asafdavid23/vpc-cidr-manager/archive/v1.0.1.tar.gz"
    sha256 "c5c4d0bbf0ab83666788bdcce71dda13fcdea194e8fa297ffe19511894ae9e94"
    license "MIT"
  
  depends_on "go" => :build

  def install
    ldflags = "-X vpc-cidr-manager/cmd.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vpc-cidr-manager --version")
  end
end