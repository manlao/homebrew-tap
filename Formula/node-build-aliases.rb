class NodeBuildAliases < Formula
  desc "Create aliases for node-build definitions"
  homepage "https://github.com/manlao/node-build-aliases"
  url "https://github.com/manlao/node-build-aliases/archive/1.4.1.tar.gz"
  sha256 "a0e71e61716c3260c3bc4476e57f83a69c1005d2a02b78d3219ce11e6cacbfee"
  head "https://github.com/manlao/node-build-aliases.git"

  depends_on "node-build"
  depends_on "nodenv"
  depends_on "nodenv/nodenv/node-build-update-defs"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match(/^aliases$/, shell_output("nodenv commands"))
  end
end
