class Pony < Formula
  desc "Talk to your OnePony ponies from the terminal"
  homepage "https://www.onepony.com"
  license "MIT"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/LoremLabs/pony/releases/download/v0.0.10"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "2239481e4e52146a7016b69c81756c57c79c5072eef36818f7723cd036141ce6"
    sha256 cellar: :any_skip_relocation, big_sur:       "c280f7222fcdbf935c73e44be5f2c0630b2176ba16fe9e3b78ff03c5471c4b2a"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "f5a4d47d99e18a3767f34eecd35aa1d09382bcd16b5ea153c1c6461755fb8d5b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "0550d54011ad0852cdaba338c811a66b7a12d057a4fe6d3b1c7201789351da64"
  end

  on_macos do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.10/pony_0.0.10_darwin_arm64.tar.gz"
      sha256 "d2d038c43acf758f41109c417ca57a4a5fe183934c05a9bcfeaf238b5a6816f2"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.10/pony_0.0.10_darwin_amd64.tar.gz"
      sha256 "78cd1a0f31e7b12833beda9e7300eda8aa352b7a77e6822645cc66a39ecf73af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.10/pony_0.0.10_linux_arm64.tar.gz"
      sha256 "cae0163c00476e91de2aef593322af43e01780e457d82915248a3331d21963d5"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.10/pony_0.0.10_linux_amd64.tar.gz"
      sha256 "35aee631405f10b90d12024adf674ac2e71b5aa9e6baf7d1a36887082adb285a"
    end
  end

  def install
    bin.install "pony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pony version")
  end
end
