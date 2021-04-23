class NodenvAutoInstall < Formula
  desc "Auto install node version"
  homepage "https://github.com/manlao/nodenv-auto-install"
  url "https://github.com/manlao/nodenv-auto-install/archive/1.0.0.tar.gz"
  sha256 "28f0aa277bfbf241f3c1f87559ffd8c4468612dfcd7442e9b35316c64009c50b"
  head "https://github.com/manlao/nodenv-auto-install.git"

  depends_on "node-build"
  depends_on "nodenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match(/versions\/15\.0\.0\/bin\/node$/, shell_output("NODENV_VERSION=15.0.0 nodenv which node"))
  end
end
