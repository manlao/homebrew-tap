class NodeBuildAliases < Formula
  desc "Create aliases for node-build definitions"
  homepage "https://github.com/manlao/node-build-aliases"
  url "https://github.com/manlao/node-build-aliases/archive/1.2.0.tar.gz"
  sha256 "f0827d49310d1dcadd198815bc4ece01eb5195cb6da81f6513c7892a6a3e2a1c"
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
