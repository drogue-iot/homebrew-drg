class Drg < Formula
  desc "A command line tool for managing apps and devices in Drogue IoT cloud"
  homepage "https://drogue.io"
  url "https://github.com/drogue-iot/drg/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "da852e7870935c515d57b872a86aaec7ee4633c884d3c1a59156fe869c23f016"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/drg", "--version"
  end
end
