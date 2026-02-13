class Vimdash < Formula
  desc "Interactive way to learn git motiions and editing!"
  homepage "https://git.willfarrell.me/willfarrell/vimdash"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://git.willfarrell.me/willfarrell/vimdash/-/releases/v1.0.2/downloads/vimdash_Darwin_arm64.tar.gz"
       sha256 "7a6598e8759ec00582fd3abd1a00d70573afde23eaf975c0f24fda616be114be"
    else
      url "https://git.willfarrell.me/willfarrell/vimdash/-/releases/v1.0.2/downloads/vimdash_Darwin_x86_64.tar.gz"
      sha256 "2b6cd915bdf84085b8720bf1047b790527a41561d87534926e80250117f22775"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://git.willfarrell.me/willfarrell/vimdash/-/releases/v1.0.2/downloads/vimdash_Linux_arm64.tar.gz"
     sha256 "261049e383350007a9c74fe2616b496376d6337441c3ff2e25dc128080af3d64"
    else
      url "https://git.willfarrell.me/will-farrell/vimdash/-/releases/v1.0.2/downloads/vimdash_Linux_x86_64.tar.gz"
    sha256 "089eb737cd77b2a7ad137d30a7b61dd6e1bd73d62aa273a40dcc8f5fa5a9e475"
    end
  end

  def install
    bin.install "vimdash"
  end

  test do
    system "#{bin}/vimdash", "--version"
  end
end
