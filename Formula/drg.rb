# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Drg < Formula
  desc "A command line tool for managing apps and devices in drogue cloud"
  homepage "https://drogue.io"
  url "https://github.com/drogue-iot/drg/archive/refs/tags/0.4.0.tar.gz"
  sha256 "608ab8c49e3c8e2b59eaf54db0475f3a7ce377de1c0ad332d8f6b9cf9adc39a7"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test drg`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
