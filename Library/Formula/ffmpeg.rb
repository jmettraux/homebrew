require 'formula'

class Ffmpeg <Formula
  head 'svn://svn.ffmpeg.org/ffmpeg/trunk', :revision => 20701
  homepage 'http://ffmpeg.org/'

  depends_on 'x264'

  def install
    configure_flags = [ "--prefix=#{prefix}",
                          "--disable-debug",
                          "--enable-nonfree",
                          "--enable-gpl",
                          "--enable-libx264"]
    system "./configure", *configure_flags
    system "make install"
  end
end
