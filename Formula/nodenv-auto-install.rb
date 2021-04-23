class NodenvAutoInstall < Formula
  desc "Auto install node version"
  homepage "https://github.com/manlao/nodenv-auto-install"
  url "https://github.com/manlao/nodenv-auto-install/archive/1.0.1.tar.gz"
  sha256 "84ed57a738ee06193beb45a4bbc1c055ac68202d808d050f102d84d13770b01c"
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
