class Rettui < Formula
  desc "Reticulum client for the terminal and the browser"
  homepage "https://github.com/zevaryx/rettui"
  version "1.6.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.6.1/rettui-v1.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "40603430a85ff9b85ebdf11c9bb6eedc77ade379fdb52ba6a97792d048e88c01"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.6.1/rettui-v1.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "15de5dc41dd627fab459044ccea3b773fd533570b8588f245bdfa5e770ed949f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.6.1/rettui-v1.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd98c46ed90f9b2d9b57b5cf5e21a3b832b534954f718a2ec8299ed0bcbbe6f5"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.6.1/rettui-v1.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5ed7064dd09796102a59352d2b206a09f98dd9e7d84700d72a9c7263ab08099"
    end
  end

  def install
    bin.install "rettui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rettui --version")
  end
end
