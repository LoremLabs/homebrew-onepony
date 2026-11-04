class Pony < Formula
  desc "Talk to your OnePony ponies from the terminal"
  homepage "https://www.onepony.com"
  license "MIT"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/LoremLabs/pony/releases/download/v0.0.4"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "be3688bb778ae2c4b1b7068df17b10d50802cbe6049d6c905e9f9b1a60fad4f5"
    sha256 cellar: :any_skip_relocation, big_sur:       "e048e2ac8f8dfc4d8b004490927be341fa666cb110cd9baa60c7a47e0d5a0657"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "d309f2f2edf0b311451d5680789b038b853c6c209b26c4cd3c1aaf4d576d2ff0"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "4a538f1bd044dbd7dff8d369ca3143c6eae8e4d9aa870e2cb4adcb32905446a3"
  end

  on_macos do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.4/pony_0.0.4_darwin_arm64.tar.gz"
      sha256 "5e68ddb92407c957c50686b2d1fcd1c2d831b83ab919a4bc32c9475ecbe63785"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.4/pony_0.0.4_darwin_amd64.tar.gz"
      sha256 "8a55b9cab8b4979fde61a8c7cad6f6c48c40f0599542d6646d3b32b200f16ecf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.4/pony_0.0.4_linux_arm64.tar.gz"
      sha256 "6ba42b056a14117698d5dc9a913df4a83eee19e1a5adf501339bd37274f90b37"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.4/pony_0.0.4_linux_amd64.tar.gz"
      sha256 "247afe017659a8cd854d102853e1faa57c20208ccd3325b9403643f950c0e6a1"
    end
  end

  def install
    bin.install "pony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pony version")
  end
end
