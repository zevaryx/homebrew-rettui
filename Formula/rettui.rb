class Rettui < Formula
  desc "Reticulum client for the terminal and the browser"
  homepage "https://github.com/zevaryx/rettui"
  version "1.8.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.8.0/rettui-v1.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "e52aa844c1b9f78c5da9922b932fa91d6f5430ff0054ecaa61fce59801a9d750"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.8.0/rettui-v1.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "019f72d5eba0a324891e577415b20dae3005fe86225f2644c385972f2347aa9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zevaryx/rettui/releases/download/v1.8.0/rettui-v1.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c61b198b681f633b8a5f2f9888ac6a76eebc275df5224a98c3d44fe81446521"
    end
    on_intel do
      url "https://github.com/zevaryx/rettui/releases/download/v1.8.0/rettui-v1.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9f848913b7d46e1ec4dd684f54aa8d3865a6cf35f6883cca888efd2ade20430"
    end
  end

  def install
    bin.install "rettui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rettui --version")
  end
end
