class NodeBuildAliases < Formula
  desc "Create aliases for node-build definitions"
  homepage "https://github.com/manlao/node-build-aliases"
  url "https://github.com/manlao/node-build-aliases/archive/1.0.1.tar.gz"
  sha256 "47162e07b9e3bd02da212e0878c30cf0f45347398119bfbf768f0dad0266865a"
  head "https://github.com/manlao/node-build-aliases.git"

  depends_on "nodenv"
  depends_on "nodenv/nodenv/nodenv-update-version-defs"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match /^aliases$/, shell_output("nodenv commands")
  end
end
