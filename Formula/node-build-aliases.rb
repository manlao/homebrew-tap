class NodeBuildAliases < Formula
  desc "Create aliases for node-build definitions"
  homepage "https://github.com/manlao/node-build-aliases"
  url "https://github.com/manlao/node-build-aliases/archive/0.0.0.tar.gz"
  sha256 "7e729232588af4e9b997c16886ce6b001530510391a6f7566474dfb2b3b5ef7a"
  head "https://github.com/manlao/node-build-aliases.git"

  depends_on "nodenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match /^aliases$/, shell_output("nodenv commands")
  end
end
