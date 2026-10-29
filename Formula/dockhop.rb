class Dockhop < Formula
  desc "App switcher and launcher"
  homepage "https://github.com/malensek/dockhop"
  license "MIT"
  head "https://github.com/malensek/dockhop.git", branch: "main"

  depends_on :macos

  def install
    system "make"
    bin.install "dockhop"
    pkgshare.install "config.example.json"
  end

  service do
    run opt_bin/"dockhop"
    keep_alive crashed: true
    error_log_path var/"log/dockhop.log"
  end
end
