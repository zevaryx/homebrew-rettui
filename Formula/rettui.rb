class Rettui < Formula
  desc "Reticulum client for the terminal and the browser"
  homepage "https://github.com/zevaryx/rettui"
  version "1.9.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.9.0/rettui-v1.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "692d02f3e4fb46988e188a8eaedfe96db437394c6daf4aeaddc74da2eb4efa7b"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.9.0/rettui-v1.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "5796809090c63331123e087d1d09ccaf5aeb46b0f178a8d878805ebdd26d7f8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.9.0/rettui-v1.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a837b978fa3f1921638178ccbd8416f9f5706a7006bd6c5a4f102521493b764"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.9.0/rettui-v1.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "290fef0ee96d79d5ddee190198c9144d6a5b7ac9340390b0e324a6675b54b0cd"
    end
  end

  def install
    bin.install "rettui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rettui --version")
  end
end
