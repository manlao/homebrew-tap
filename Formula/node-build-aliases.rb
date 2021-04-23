class NodeBuildAliases < Formula
  desc "Create aliases for node-build definitions"
  homepage "https://github.com/manlao/node-build-aliases"
  url "https://github.com/manlao/node-build-aliases/archive/1.2.1.tar.gz"
  sha256 "12c0ea7c7cbf53f31eb1a19a638bf978c64a0b93d4fb9d59c7cfd5b541009e2d"
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
