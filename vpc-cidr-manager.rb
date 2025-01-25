class VpcCidrManager < Formula
    desc "A Simple CLI tool to manage AWS VPC CIDR block reservations stored in DynamoDB."
    homepage "https://github.com/asafdavid23/vpc-cidr-manager"
    url "https://github.com/asafdavid23/vpc-cidr-manager/archive/v1.1.0.tar.gz"
    sha256 "c27290fc7ae585b18986f5b1bca8c8f606b1e912e246b65b312f789bc4c269e1"
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