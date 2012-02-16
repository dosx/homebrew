require 'formula'

class ProtobufObjc < Formula
  homepage 'https://github.com/booyah/protobuf-objc'
  url 'https://github.com/booyah/protobuf-objc/tarball/9eb586b2178163c2fdbdfce772a48731e5884905'
  md5 '596876aebf1f441360f985a7b5451a83'
  version '0.1.0'

  depends_on 'protobuf'

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
