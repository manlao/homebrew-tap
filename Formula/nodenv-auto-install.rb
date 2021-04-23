class NodenvAutoInstall < Formula
  desc "Auto install node version"
  homepage "https://github.com/manlao/nodenv-auto-install"
  url "https://github.com/manlao/nodenv-auto-install/archive/1.1.0.tar.gz"
  sha256 "df5b5cca9bda222b5120327a7a64551b602d6f2e4a81871b00594c3f3ab636b5"
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
