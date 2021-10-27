class NodeBuildAliases < Formula
  desc "Create aliases for node-build definitions"
  homepage "https://github.com/manlao/node-build-aliases"
  url "https://github.com/manlao/node-build-aliases/archive/2.1.0.tar.gz"
  sha256 "5473ce3b5f8ea1fe39af563bcd4c3dcf71d44199501343cbdb69c42fecba25c1"
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
