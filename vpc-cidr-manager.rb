class VpcCidrManager < Formula
    desc "A Simple CLI tool to manage AWS VPC CIDR block reservations stored in DynamoDB."
    homepage "https://github.com/asafdavid23/vpc-cidr-manager"
    url "https://github.com/asafdavid23/vpc-cidr-manager/archive/v1.0.3.tar.gz"
    sha256 "b86d1af35d7e59c4e6d9c07f0385b9eba5612d72241840084a4dfce42ff439b8"
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