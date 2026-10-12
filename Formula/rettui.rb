class Rettui < Formula
  desc "Reticulum client for the terminal and the browser"
  homepage "https://github.com/zevaryx/rettui"
  version "1.7.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.7.0/rettui-v1.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "1c882a5bd81601ddc17aaf6ab5c6697cc01389bdf61aed7f776cd2385b7f7e41"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.7.0/rettui-v1.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "771f5daf69d95313c1ad5e944d6b57b010aecff3e347e52be0dcec41407e2063"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.7.0/rettui-v1.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e81b3cfeba6742d524c14ac7143bd1218b6f83d0a531917a2fe49ef902b71bb"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.7.0/rettui-v1.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4e071601aaa9836e6a86debd426ab051731138924c5bd5955bc2f8cdae21614"
    end
  end

  def install
    bin.install "rettui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rettui --version")
  end
end
