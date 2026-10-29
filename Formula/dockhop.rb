class Dockhop < Formula
  desc "App switcher and launcher"
  homepage "https://github.com/malensek/dockhop"
  license "MIT"
  url "https://github.com/malensek/dockhop/archive/refs/tags/v1.0.tar.gz"
  sha256 "90117ff4483901f2851f17557a705b2488c3639fb9cab584651ea9cb0b74f3ce"
  head "https://github.com/malensek/dockhop.git", branch: "main"

  depends_on :macos

  def install
    system "make"
    bin.install "dockhop"
    pkgshare.install "config.example.json"
    prefix.install "net.malensek.dockhop.plist"
    system "/usr/bin/plutil", "-insert", "ProgramArguments.0", "-string",
           opt_bin/"dockhop", prefix/"net.malensek.dockhop.plist"
  end

  service do
    name macos: "net.malensek.dockhop"
  end
end
