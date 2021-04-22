class NodeBuildAliases < Formula
  desc "Create aliases for node-build definitions"
  homepage "https://github.com/manlao/node-build-aliases"
  url "https://github.com/manlao/node-build-aliases/archive/1.1.0.tar.gz"
  sha256 "aed42e1e170e8b2e755042cfa72f3fb7b3f76870c06221e0ad63e8c16433f0e3"
  head "https://github.com/manlao/node-build-aliases.git"

  depends_on "nodenv"
  depends_on "nodenv/nodenv/node-build-update-defs"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match /^aliases$/, shell_output("nodenv commands")
  end
end
