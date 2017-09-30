class PassMactomb < Formula
  desc "A pass extension that helps to keep the whole tree of password encrypted inside a tomb. Based on another extension(https://github.com/roddhjav/pass-tomb), but works on mac."
  homepage "https://github.com/makadaw/pass-mactomb"
  url "https://github.com/makadaw/pass-mactomb/archive/0.0.1.zip"
  sha256 "e3e29084c83a245015ae526601a789f40f87addc6267251b949e159532ea89f3"

  depends_on "pass"

  def install
    system "PREFIX=#{HOMEBREW_PREFIX} make install"
  end

  test do
    system "false"
  end
end
