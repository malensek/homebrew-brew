class Terminibbles < Formula
  desc "The classic game of snake, for your terminal"
  homepage "https://sigpipe.io/terminibbles"
  url "https://sigpipe.io/terminibbles/releases/terminibbles-1.4.tar.gz"
  sha256 "8f8eb97d7220202107ce905d33925d53a696a8bcd555b5f71a15a91099a8c302"

  def install
    ENV["PREFIX"] = "#{prefix}"
    system "make", "install"
  end
end
