class Drg < Formula
  desc "A command line tool for managing apps and devices in Drogue IoT cloud"
  homepage "https://drogue.io"
  url "https://github.com/drogue-iot/drg/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "3c202d9c6eee4424a01a130ed7a5bfbb61b2cd42b37b1e0e7c2fbc092ca25502"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/drg", "--version"
  end
end
