class Drg < Formula
  desc "A command line tool for managing apps and devices in Drogue IoT cloud"
  homepage "https://drogue.io"
  url "https://github.com/drogue-iot/drg/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "43a8d1170d910ff93d344a0e161b23b834d854f055689ed2dbda0c1346f1a173"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/drg", "--version"
  end
end
