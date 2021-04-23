class NodeBuildAliases < Formula
  desc "Create aliases for node-build definitions"
  homepage "https://github.com/manlao/node-build-aliases"
  url "https://github.com/manlao/node-build-aliases/archive/1.1.1.tar.gz"
  sha256 "e77c551c5892a3a8d62cfb6cf814532e67694bd746b84cb75b2758b26f3fb8bb"
  head "https://github.com/manlao/node-build-aliases.git"

  depends_on "nodenv"
  depends_on "nodenv/nodenv/node-build-update-defs"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match(/^aliases$/, shell_output("nodenv commands"))
  end
end
