class Pony < Formula
  desc "Talk to your OnePony ponies from the terminal"
  homepage "https://www.onepony.com"
  license "MIT"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/LoremLabs/pony/releases/download/v0.0.9"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "ba7d68503e0c44f2c5c8e68b08721d22088dabd30f305068b0d48609a531c1b4"
    sha256 cellar: :any_skip_relocation, big_sur:       "2733030ed7c02318c4fceecc2d241d95fec5245e8037559fe26c324886f6b3b2"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "e397a8474f8effa7fab004073555634de7c8639f2b04b9f3744b5aec0132f5d5"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "d73a08b7c518f22d2b8326019e962855b203e8923c5cc912324108d1f8b65ef9"
  end

  on_macos do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.9/pony_0.0.9_darwin_arm64.tar.gz"
      sha256 "3849fceb09bcfe2123e36e43488e33e33800019dd2da027dbcce18257e541a09"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.9/pony_0.0.9_darwin_amd64.tar.gz"
      sha256 "b27396204d6613a1d5c7004c8cf87a67c5cc8d66dbdcd984e51efc4a0e85e369"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.9/pony_0.0.9_linux_arm64.tar.gz"
      sha256 "5d6b3c68bb31c28b505438e3ab1815e84599329dda92a837f5f9bed8a8d67b88"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.9/pony_0.0.9_linux_amd64.tar.gz"
      sha256 "97e98c9a8eaf39caf2d4c9c1a25dbded4cb788f91de67113a4adae0cc44995f6"
    end
  end

  def install
    bin.install "pony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pony version")
  end
end
