class Pony < Formula
  desc "Talk to your OnePony ponies from the terminal"
  homepage "https://www.onepony.com"
  license "MIT"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/LoremLabs/pony/releases/download/v0.0.13"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "9fcb7d30dad3522098f5d4acd4fd9561dcf8e313cb81f26bf9566051f9e36766"
    sha256 cellar: :any_skip_relocation, big_sur:       "2306941b86865b21384e07ebfb8ccac2bd770582d72f82dead36782e6e385427"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "57b971878dbd16b3dff9780f698d9ce37afca6964b316152f5552c81eba60d6f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "1a807adb114c536362e25b01d27c2b9668967503462fb6a4786f547af4233fe8"
  end

  on_macos do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.13/pony_0.0.13_darwin_arm64.tar.gz"
      sha256 "88289d84d95e9acf0d9ae3e6c18568a694e7fdb15dfd0d539004686b58963903"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.13/pony_0.0.13_darwin_amd64.tar.gz"
      sha256 "c3399b67613e71e6a0447a943e1b5baf9f5ec3e88dbcc7813ed7d10da9298f26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.13/pony_0.0.13_linux_arm64.tar.gz"
      sha256 "8650b3cecfae7abdd9332cd210125bd4e90735415b861d74d5909d14ef659e51"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.13/pony_0.0.13_linux_amd64.tar.gz"
      sha256 "632c87dd307023c91fcadeeccc0af2aa78ab8078c7f1a3de16596a522409f988"
    end
  end

  def install
    bin.install "pony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pony version")
  end
end
