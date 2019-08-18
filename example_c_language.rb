class ExampleCLanguage < Formula
  desc "Example repository containing C language code"
  homepage "https://github.com/ns408/example_c_language"
  url "https://github.com/ns408/example_c_language/archive/v1.1.tar.gz"
  sha256 "c997a8f3de78be8c3e9544b882429df86b3abe0a47f818a3f4518f5220d50609"

  def install
    ENV.deparallelize
    system ENV.cc, "example_c_language.c", "-o", "example_c_language"
    bin.install "example_c_language"
  end

  test do
    system bin/"example_c_language"
  end
end
