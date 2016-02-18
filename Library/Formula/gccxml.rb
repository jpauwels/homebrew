require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Gccxml < Formula
  homepage 'http://www.gccxml.org'
  head 'https://github.com/gccxml/gccxml.git'
  sha1 ''

  depends_on 'cmake' => :build

  fails_with :clang do
    build 318
    cause <<-EOS.undent
      bla
    EOS
  end

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end

  def test
    system "gccxml"
  end
end
