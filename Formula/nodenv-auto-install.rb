class NodenvAutoInstall < Formula
  desc "Auto install node version"
  homepage "https://github.com/manlao/nodenv-auto-install"
  url "https://github.com/manlao/nodenv-auto-install/archive/0.0.0.tar.gz"
  sha256 "e77c551c5892a3a8d62cfb6cf814532e67694bd746b84cb75b2758b26f3fb8bb"
  head "https://github.com/manlao/nodenv-auto-install.git"

  depends_on "nodenv"
  depends_on "node-build"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match(/^Downloading node-v15.0.0/, shell_output("NODENV_VERSION=15.0.0 nodenv which node"))
  end
end
