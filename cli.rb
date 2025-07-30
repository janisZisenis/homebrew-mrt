class Cli < Formula
  desc "Multi Repository Tool - CLI utility for managing multiple repositories"
  homepage "https://github.com/janisZisenis/mrt-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janisZisenis/mrt-cli/releases/download/v0.1.0/mrt-darwin-arm64"
      sha256 "c16e1abe471a7e7a3547bc16011e606baeb0ded900668a0e9c15bd5572819ebc"
      def install
        bin.install "mrt-darwin-arm64" => "mrt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/janisZisenis/mrt-cli/releases/download/v0.1.0/mrt-darwin-amd64"
      sha256 "00c68c158693adfb4de7b2e1d0b086a95a48366f19e71965dd404b17e1e67561"
      def install
        bin.install "mrt-darwin-amd64" => "mrt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/janisZisenis/mrt-cli/releases/download/v0.1.0/mrt-linux-arm64"
      sha256 "c16e1abe471a7e7a3547bc16011e606baeb0ded900668a0e9c15bd5572819ebc"
      def install
        bin.install "mrt-linux-arm64" => "mrt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/janisZisenis/mrt-cli/releases/download/v0.1.0/mrt-linux-amd64"
      sha256 "00c68c158693adfb4de7b2e1d0b086a95a48366f19e71965dd404b17e1e67561"
      def install
        bin.install "mrt-linux-amd64" => "mrt"
      end
    end
  end

  test do
    assert_match "mrt - version", shell_output("#{bin}/mrt version")
  end
end