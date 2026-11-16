class NodenvAutoInstall < Formula
  desc "Auto install node version"
  homepage "https://github.com/manlao/nodenv-auto-install"
  url "https://github.com/manlao/nodenv-auto-install/archive/refs/tags/1.3.0.tar.gz"
  sha256 "ed8722d993f799f9da037b6cc26bb7b656e73cbcbfc2641e72a20d41e47d42da"
  head "https://github.com/manlao/nodenv-auto-install.git"

  depends_on "node-build"
  depends_on "nodenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match("22.0.0", shell_output("NODENV_VERSION=22.0.0 nodenv version-name"))
    assert_match("versions/22.0.0/bin/node", shell_output("NODENV_VERSION=22.0.0 nodenv which node"))
  end
end
