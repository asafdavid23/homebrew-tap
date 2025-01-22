class VpcCidrManager < Formula
    desc "A Simple CLI tool to manage AWS VPC CIDR block reservations stored in DynamoDB."
    homepage "https://github.com/asafdavid23/vpc-cidr-manager"
    url "https://github.com/asafdavid23/vpc-cidr-manager/archive/v1.0.2.tar.gz"
    sha256 "a9e849cdcb0486be90f24fab12a83ed6016638a20e4b00f4cd27ee575f76ac6d"
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