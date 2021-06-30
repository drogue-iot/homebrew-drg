# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Drg < Formula
  desc "A command line tool for managing apps and devices in drogue cloud"
  homepage "https://drogue.io"
  url "https://github.com/drogue-iot/drg/releases/download/v0.5.1/drg-0.5.1-macos-amd64.tar.gz"
  sha256 "cfbe643c795649637e821a4d597adde439c7258071b4b50cd1893748c0436738"
  license "Apache-2.0"
  version "0.5.1"


  def install
    bin.install "drg"
  end

end
