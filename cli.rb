class Cli < Formula
  desc "Multi Repository Tool - CLI utility for managing multiple repositories"
  homepage "https://github.com/janisZisenis/mrt-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janisZisenis/mrt-cli/releases/download/v0.1.0/mrt-darwin-arm64"
      sha256 "" # Add SHA256 checksum here when available
      def install
        bin.install "mrt-darwin-arm64" => "mrt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/janisZisenis/mrt-cli/releases/download/v0.1.0/mrt-darwin-amd64"
      sha256 "" # Add SHA256 checksum here when available
      def install
        bin.install "mrt-darwin-amd64" => "mrt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janisZisenis/mrt-cli/releases/download/v0.1.0/mrt-linux-arm64"
      sha256 "" # Add SHA256 checksum here when available
      def install
        bin.install "mrt-linux-arm64" => "mrt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/janisZisenis/mrt-cli/releases/download/v0.1.0/mrt-linux-amd64"
      sha256 "" # Add SHA256 checksum here when available
      def install
        bin.install "mrt-linux-amd64" => "mrt"
      end
    end
  end

  test do
    assert_match "mrt - version", shell_output("#{bin}/mrt version")
  end
end