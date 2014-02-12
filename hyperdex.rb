require 'formula'

class Hyperdex < Formula
  homepage 'http://hyperdex.org'
  url 'http://hyperdex.org/src/hyperdex-1.1.0.tar.gz'
  sha1 'ebefa890c846053ba7f2e7897b8e023bc40955be'

  depends_on 'autoconf'
  depends_on 'automake'
  depends_on 'autoconf-archive'
  depends_on 'libtool'
  depends_on 'pkg-config'

  depends_on 'popt'
  depends_on 'glog'
  depends_on 'google-sparsehash'
  depends_on 'libpo6'
  depends_on 'libe'
  depends_on 'busybee'
  depends_on 'hyperleveldb'
  depends_on 'replicant'

  def patches
    DATA
  end

  def install
    ENV['PKG_CONFIG_PATH']="#{HOMEBREW_PREFIX}/lib/pkgconfig"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
__END__
diff --git a/cityhash/city.cc b/cityhash/city.cc
index 49f299b..e09b659 100644
--- a/cityhash/city.cc
+++ b/cityhash/city.cc
@@ -499,7 +499,7 @@ uint128 CityHash128(const char *s, size_t len) {
       CityHash128WithSeed(s, len, uint128(k0, k1));
 }
 
-#ifdef __SSE4_2__
+#if 0
 #include <citycrc.h>
 #include <nmmintrin.h>
 
