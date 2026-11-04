class Pony < Formula
  desc "Talk to your OnePony ponies from the terminal"
  homepage "https://www.onepony.com"
  license "MIT"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/LoremLabs/pony/releases/download/v0.0.6"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "ed50be1478a420c4c24be3d806825b38c39059b9ec65ba443f111b5114ef0219"
    sha256 cellar: :any_skip_relocation, big_sur:       "531c19944d72b2f187f3213ed276bb06ec545beaa42115c3e883ad9a48410182"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "fb1748db131dc1db3a9ec7cde1b9ef2cad87e0809cb9c737ac7c5f9c6ff56153"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e41aa93e7afb6b8bdb0978df419b3017e7155b2cc8ac11dea0b7865e2d69fab2"
  end

  on_macos do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.6/pony_0.0.6_darwin_arm64.tar.gz"
      sha256 "3c48cb3850c39b989404475527e98523980353ac59e51a13c8b178b12d11499e"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.6/pony_0.0.6_darwin_amd64.tar.gz"
      sha256 "309facc88e78e113dc2cd372dee2f4abc1523eb8d0175d3fbc8be94b7b099f2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.6/pony_0.0.6_linux_arm64.tar.gz"
      sha256 "6167d50a0fe57ec67c1b75c304883aa65a6869f504c4bdcbed683ef683d39dc9"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.6/pony_0.0.6_linux_amd64.tar.gz"
      sha256 "179a65370427f12297dfb7780e006bc1bd5eaf73167847cd691447f21dceedb0"
    end
  end

  def install
    bin.install "pony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pony version")
  end
end
