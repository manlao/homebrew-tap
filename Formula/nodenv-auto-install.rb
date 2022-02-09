class NodenvAutoInstall < Formula
  desc "Auto install node version"
  homepage "https://github.com/manlao/nodenv-auto-install"
  url "https://github.com/manlao/nodenv-auto-install/archive/1.2.0.tar.gz"
  sha256 "f2892aae0bfe12db2837ed1b5e924f911449b97832ae44d638f7c2afcaf0cb18"
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
