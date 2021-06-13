class NodeBuildAliases < Formula
  desc "Create aliases for node-build definitions"
  homepage "https://github.com/manlao/node-build-aliases"
  url "https://github.com/manlao/node-build-aliases/archive/1.4.0.tar.gz"
  sha256 "f4da275f44da48ec005db347fea231bbd86827869bca417f17c4e1b0eb7b38d7"
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
