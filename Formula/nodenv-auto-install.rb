class NodenvAutoInstall < Formula
  desc "Auto install node version"
  homepage "https://github.com/manlao/nodenv-auto-install"
  url "https://github.com/manlao/nodenv-auto-install/archive/1.1.1.tar.gz"
  sha256 "5cc3ddf36f486f364ffd03a3161f3dc365f4564593c2b5a7ee68474a6b533a3d"
  head "https://github.com/manlao/nodenv-auto-install.git"

  depends_on "node-build"
  depends_on "nodenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match("15.0.0", shell_output("NODENV_VERSION=15.0.0 nodenv version-name"))
    assert_match("versions/15.0.0/bin/node", shell_output("NODENV_VERSION=15.0.0 nodenv which node"))
  end
end
