class Rettui < Formula
  desc "Reticulum client for the terminal and the browser"
  homepage "https://github.com/zevaryx/rettui"
  version "1.7.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.7.2/rettui-v1.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "472036ccd2a3184f7f723ae64d33c0c9f5ab49e0d4d594dda7c5601db2c97a2f"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.7.2/rettui-v1.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "2a726ca077ef602684508b54c12c93635829453abe7438a7e4c42c3175419722"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.7.2/rettui-v1.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d2d026418a506e6332b4d5953a015469d8238bc02e7d3bb60163cc43cbf3350"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.7.2/rettui-v1.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c97a23b12b4023f45d3cf77c9844bb64b31d8389f2153a01259c2b7b398933e4"
    end
  end

  def install
    bin.install "rettui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rettui --version")
  end
end
