class NodeBuildAliases < Formula
  desc "Create aliases for node-build definitions"
  homepage "https://github.com/manlao/node-build-aliases"
  url "https://github.com/manlao/node-build-aliases/archive/1.0.0.tar.gz"
  sha256 "ca4a1b7c0eb7464b7e5ccfd6e709ed4f08e54a148b6a6ec275d68b36808cabbe"
  head "https://github.com/manlao/node-build-aliases.git"

  depends_on "nodenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match /^aliases$/, shell_output("nodenv commands")
  end
end
