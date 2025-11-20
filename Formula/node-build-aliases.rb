class NodeBuildAliases < Formula
  desc "Create aliases for node-build definitions"
  homepage "https://github.com/manlao/node-build-aliases"
  url "https://github.com/manlao/node-build-aliases/archive/refs/tags/2.3.3.tar.gz"
  sha256 "88cd299a2c5cd1d1a506fb47f00490c74268da8c774f0189bd0b523fa14f3adb"
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
