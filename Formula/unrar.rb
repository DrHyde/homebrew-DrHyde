class Unrar < Formula
  desc "Extract, view, and test RAR archives"
  homepage "https://www.rarlab.com/rar_add.htm"
  url "https://www.rarlab.com/rar/unrarsrc-7.1.6.tar.gz"
  sha256 "ca5e1da37dd6fa1b78bb5ed675486413f79e4a917709744aa04b6f93dfd914f0"

  livecheck do
    url "https://www.rarlab.com/rar_add.htm"
    regex(/href=.*?unrarsrc[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  def install
    # upstream doesn't particularly care about their unix targets,
    # so we do the dirty work of renaming their shared objects to
    # dylibs for them.
    inreplace "makefile", "libunrar.so", "libunrar.dylib"

    system "make", "CXXFLAGS=-std=c++11"
    bin.install "unrar"

    # Explicitly clean up for the library build to avoid an issue with an
    # apparent implicit clean which confuses the dependencies.
    system "make", "clean"
    system "make", "lib", "CXXFLAGS=-std=c++11"
    lib.install shared_library("libunrar")
  end

  test do
    contentpath = "directory/file.txt"
    rarpath = testpath/"archive.rar"
    data =  "UmFyIRoHAM+QcwAADQAAAAAAAACaCHQggDIACQAAAAkAAAADtPej1LZwZE" \
            "QUMBIApIEAAGRpcmVjdG9yeVxmaWxlLnR4dEhvbWVicmV3CsQ9ewBABwA="

    rarpath.write data.unpack1("m")
    assert_equal contentpath, `#{bin}/unrar lb #{rarpath}`.strip
    assert_equal 0, $CHILD_STATUS.exitstatus

    system "#{bin}/unrar", "x", rarpath, testpath
    assert_equal "Homebrew\n", (testpath/contentpath).read
  end
end
