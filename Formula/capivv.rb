class Capivv < Formula
  desc "CLI for managing in-app subscriptions with Capivv"
  homepage "https://github.com/capivv/capivv"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/capivv/capivv/releases/download/v0.1.3/capivv-darwin-arm64.tar.gz"
      sha256 "6688fd24546e216207c4a019d2e9dd314ad8502821b0bf787597afa06a2a9cca"
    else
      url "https://github.com/capivv/capivv/releases/download/v0.1.3/capivv-darwin-x86_64.tar.gz"
      sha256 "614011b480c238fded982adabc92a344c19309f78479248510e712d2df965b54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/capivv/capivv/releases/download/v0.1.3/capivv-linux-arm64.tar.gz"
      sha256 "5a8558f21cec13ac6eec5863c0aa0957749bbae8883e3ddfdc5a139a9c75c329"
    else
      url "https://github.com/capivv/capivv/releases/download/v0.1.3/capivv-linux-x86_64.tar.gz"
      sha256 "8c216e9a50dd0917c95dc88dfcb597e63659c56cef872b4fac13e37675cfc799"
    end
  end

  def install
    bin.install "capivv"
  end

  test do
    system "#{bin}/capivv", "--version"
  end
end
