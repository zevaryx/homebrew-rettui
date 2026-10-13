class Rettui < Formula
  desc "Reticulum client for the terminal and the browser"
  homepage "https://github.com/zevaryx/rettui"
  version "1.7.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.7.1/rettui-v1.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "faa201e24c4680d67dd599e2bc304c747ec008060800ce20ea15fb7b238f6215"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.7.1/rettui-v1.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "a1fd082ee1505def6169c392d0ad434a20e6624dbcaebf9fee807831bfcc6f1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.7.1/rettui-v1.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a87d52d1f498b76b4aea49da35799b7eab1516042552ffa0a21e37fb45b88a3d"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.7.1/rettui-v1.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d41f845971c1982a0c788038ba5079f4623b61675d9867e07b8b49cc9082a64"
    end
  end

  def install
    bin.install "rettui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rettui --version")
  end
end
