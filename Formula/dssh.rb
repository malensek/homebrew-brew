class Dssh < Formula
  desc "SSH for clusters"
  homepage "https://sigpipe.io/dssh"
  url "https://sigpipe.io/dssh/releases/dssh-1.1.tar.gz"
  sha256 "096c9bce97778e24bb91a981bea8736e3fc279c2200fb9c0dcc8a4b54e6a2b19"

  def install
    ENV["PREFIX"] = "#{prefix}"
    system "make", "install"
  end
end
