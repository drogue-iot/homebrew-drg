# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Drg < Formula
  desc "A command line tool for managing apps and devices in drogue cloud"
  homepage "https://drogue.io"
  url "https://github.com/drogue-iot/drg/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "4273dff46ed70f19ab24b3cd92731797d0b9d47348decf9862c31ceec95a439f"
  license "Apache-2.0"

  depends_on "rust" => :build

  bottle do
    sha256 cellar: :any_skip_relocation, catalina: "7e7d7a5faeaae36f8278c51ff34274f9ca25f9becc37683a8305729bbb09dc46"
  end

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
