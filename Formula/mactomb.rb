require "fileutils"

class Mactomb < Formula
  desc "Is a free and open source system for file encryption on Mac OS X, facilitating the backup of secret files through encrypted storage containers."
  homepage "https://www.dyne.org/software/mactomb/"
  url "https://github.com/davinerd/MacTomb/archive/9f039211f33d320fe93293b1d5a680ca4849f843.zip"
  sha256 "8703932f72bbc0dbebc0a7f88a6aff3ccd650b5583349dcab0f0c6568e3cfb18"

  def install
    # Set exec rights to script
    cp("mactomb.sh", "mactomb")
    bin.install "mactomb"
  end

  test do
    system "false"
  end
end
