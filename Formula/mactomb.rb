class Mactomb < Formula
  desc "MacTomb is a free and open source system for file encryption on Mac OS X, facilitating the backup of secret files through encrypted storage containers."
  homepage "https://www.dyne.org/software/mactomb/"
  url "https://github.com/makadaw/MacTomb/archive/master.zip"
  sha256 "c2c008c44ff567e6af8df4cc5a74957060ce40de0d423d1d41d6f8ddecaa4428"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end