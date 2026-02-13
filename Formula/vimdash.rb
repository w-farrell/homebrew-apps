class VimDash < Formula
  desc "Interactive way to learn git motiions and editing!"
  homepage "https://git.willfarrell.me/willfarrell/vimdash"
  url "https://git.willfarrell.me/willfarrell/vimdash/-/archive/v1.0.2/vimdash-v1.0.2.tar.gz"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git.willfarrell.me/will-farrell/vimdash/-/releases/v1.0.2/downloads/vimdash_Darwin_arm64.tar.gz"
      sha256 "91a6083496b526ffd8b07c0a0ee8f1e4b0a27d11613befb8b16abd0d6486248e8"
    else
      url "https://git.willfarrell.me/will-farrell/vimdash/-/releases/v1.0.2/downloads/vimdash_Darwin_x86_64.tar.gz"
      sha256 "82361895410d2b3a8179cfa3ac8f8fdb71ed4cbef05a1aeb1ddcfacf1e6f1413"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://git.willfarrell.me/will-farrell/vimdash/-/releases/v1.0.2/downloads/vimdash_Linux_arm64.tar.gz"
      sha256 "711205a33a52c0804d651bf0451598807c6bb086e25389439d7b4bd1e99b381f5"
    else
      url "https://git.willfarrell.me/will-farrell/vimdash/-/releases/v1.0.2/downloads/vimdash_Linux_x86_64.tar.gz"
      sha256 "7a65988e9759cc9587fd3abd1a00d70573afde23ea1975c8f24fda616be114be"
    end
  end

  def install
    bin.install "vimdash"
  end

  test do
    system "#{bin}/vimdash", "--version"
  end
end
