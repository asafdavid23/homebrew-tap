class Eolctl < Formula
    desc "eolctl is Go CLI tool that provide capabillities to query EOL information for varius of products. "
    homepage "https://github.com/asafdavid23/eolctl"
    url "https://github.com/asafdavid23/eolctl/archive/v1.2.0.tar.gz"
    sha256 "ae334107df7d8024c4a6932d7e2beb035ced198d4442917da4e8a0bf04b446ec"
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