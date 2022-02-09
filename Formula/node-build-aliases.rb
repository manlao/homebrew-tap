class NodeBuildAliases < Formula
  desc "Create aliases for node-build definitions"
  homepage "https://github.com/manlao/node-build-aliases"
  url "https://github.com/manlao/node-build-aliases/archive/2.2.0.tar.gz"
  sha256 "94234a241c417d9b68a2681793625402129edd29d646f5269e38749e29bb2174"
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
