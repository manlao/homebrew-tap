class NodenvAutoInstall < Formula
  desc "Auto install node version"
  homepage "https://github.com/manlao/nodenv-auto-install"
  url "https://github.com/manlao/nodenv-auto-install/archive/1.0.2.tar.gz"
  sha256 "95a4b02fdbccb8c65517f82b3ac20bdac3fcc1e36e3ccf160ca6eaadcb917511"
  head "https://github.com/manlao/nodenv-auto-install.git"

  depends_on "node-build"
  depends_on "nodenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match(%r{versions/15.0.0/bin/node$}, shell_output("NODENV_VERSION=15.0.0 nodenv which node"))
  end
end
