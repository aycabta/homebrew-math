require "formula"

class Basmat < Formula
  homepage "https://github.com/aycabta/basmat"
  url "https://github.com/aycabta/basmat/releases/download/1.0.0/basmat-1.0.0.tar.gz"
  sha1 "67c0f10e45164c623033773643f4195f9b363bca"
  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
  test do
    system "#{bin}/basmat", "\"(0,0)(1,1)[2]\""
  end
end

