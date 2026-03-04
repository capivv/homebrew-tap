class Capivv < Formula
  desc "CLI for managing in-app subscriptions with Capivv"
  homepage "https://capivv.com"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/capivv/homebrew-tap/releases/download/v0.1.3/capivv-darwin-arm64.tar.gz"
      sha256 "dfbf6536d13ca2ff21d7aace3d426de924b604dc13ae710e32bb086733535e9b"
    else
      url "https://github.com/capivv/homebrew-tap/releases/download/v0.1.3/capivv-darwin-x86_64.tar.gz"
      sha256 "18a7c8995cdf06905b5de772c6f5805aff81208d2e51727155213a4f0f5d4d44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/capivv/homebrew-tap/releases/download/v0.1.3/capivv-linux-arm64.tar.gz"
      sha256 "7e2c68ee06bc324538ddf69e484dc0e025fcf70b13e398d1ab2bb272f5ad02f6"
    else
      url "https://github.com/capivv/homebrew-tap/releases/download/v0.1.3/capivv-linux-x86_64.tar.gz"
      sha256 "e064d8979b12de244c71885789988067e26917bce79a225939a388f80d3c7aeb"
    end
  end

  def install
    bin.install "capivv"
  end

  test do
    system "#{bin}/capivv", "--version"
  end
end
