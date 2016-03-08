class Dssh < Formula
  desc "SSH for clusters"
  homepage "https://sigpipe.io/dssh"
  url "https://sigpipe.io/dssh/releases/dssh-1.0.tar.gz"
  sha256 "8f8eb97d7220202107ce905d33925d53a696a8bcd555b5f71a15a91099a8c302"

  def install
    ENV["PREFIX"] = "#{prefix}"
    system "make", "install"
  end
end
