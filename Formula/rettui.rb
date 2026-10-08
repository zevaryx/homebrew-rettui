class Rettui < Formula
  desc "Reticulum client for the terminal and the browser"
  homepage "https://github.com/zevaryx/rettui"
  version "1.6.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.6.0/rettui-v1.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "15c6503aec3816ff2c6c3dde037ceb96d66ee2319271342b8ecbcc470d343ed8"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.6.0/rettui-v1.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "b839a3b9c84b7fcfc789476afaf8d754c4781de8030306c36dcb2dcbc25a9184"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.6.0/rettui-v1.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd97ac3f410692fdc3d972b9e0378072fd3ecf612ad70914c2e964edd38d4f78"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.6.0/rettui-v1.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "077821157bfcab8670e81012b3fdf36a98c31d498191ec7c001814d4d85a34d3"
    end
  end

  def install
    bin.install "rettui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rettui --version")
  end
end
