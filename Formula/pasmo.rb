class Pasmo < Formula
  desc "Julian Albo's Z80 assembler"
  homepage "https://pasmo.speccy.org/"
  url "https://pasmo.speccy.org/bin/pasmo-0.5.5.tar.gz"
  sha256 "c83ff23e06b26ab5de05efaf13d9ebaf485d43f9a3a1ed50bba17be5a87918ac"

  def install
    system "./configure"
    system "make", "CXXFLAGS=-std=c++14"
    bin.install "pasmo"
  end
end
