require "fileutils"

class Mactomb < Formula
  desc "Is a free and open source system for file encryption on Mac OS X, facilitating the backup of secret files through encrypted storage containers."
  homepage "https://www.dyne.org/software/mactomb/"
  url "https://github.com/makadaw/MacTomb/archive/1.3.0.zip"
  sha256 "c2c008c44ff567e6af8df4cc5a74957060ce40de0d423d1d41d6f8ddecaa4428"

  def install
    # Set exec rights to script
    cp("mactomb.sh", "mactomb")
    bin.install "mactomb"
  end

  test do
    system "false"
  end
end
