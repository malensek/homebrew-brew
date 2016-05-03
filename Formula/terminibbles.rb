class Terminibbles < Formula
  desc "The classic game of snake, for your terminal"
  homepage "https://sigpipe.io/terminibbles"
  url "https://sigpipe.io/terminibbles/releases/terminibbles-1.4.tar.gz"
  sha256 "1fffb996f3adf56e7260918edce56ad7ee5f7c022dea78d436c080f6043f665c"

  def install
    ENV["PREFIX"] = "#{prefix}"
    system "make", "install"
  end
end
