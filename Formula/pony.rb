class Pony < Formula
  desc "Talk to your OnePony ponies from the terminal"
  homepage "https://www.onepony.com"
  license "MIT"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/LoremLabs/pony/releases/download/v0.0.5"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "b0387dc4047dd628841dae0fbab40ecba1df43f5646a03e8079ea4e4f5d270ec"
    sha256 cellar: :any_skip_relocation, big_sur:       "cb586182c0ba6a000673fd9352a0787f8374245eb419ba84c8ab75f3a00fedc7"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "d6eef8a4ea903fcf828547b086cf28e3190002aa477970386ce94d7c8969ae87"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "d52c78b7664718e02db8574f7f11f112766731eb979d912a1484985519bcf6f3"
  end

  on_macos do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.5/pony_0.0.5_darwin_arm64.tar.gz"
      sha256 "47fdfe5cf0915f19b71eb2990d6006428c4c911f7baedef70ef538d53c9cdde8"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.5/pony_0.0.5_darwin_amd64.tar.gz"
      sha256 "2dbe20a5df6b4069bbede09d103fcc2be068dca26d1a5fa9e6ab428b21125eac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.5/pony_0.0.5_linux_arm64.tar.gz"
      sha256 "fe9c0753ef3c01d8c42cbee9ed500e11c4b5ae216c0caf435ef37ea28329ab69"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.5/pony_0.0.5_linux_amd64.tar.gz"
      sha256 "9fce3040a1c566460b7477afdab494222cc17e21b5e7724b50e60474883fc7a2"
    end
  end

  def install
    bin.install "pony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pony version")
  end
end
