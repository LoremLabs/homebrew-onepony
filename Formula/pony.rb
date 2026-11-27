class Pony < Formula
  desc "Talk to your OnePony ponies from the terminal"
  homepage "https://www.onepony.com"
  license "MIT"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/LoremLabs/pony/releases/download/v0.0.14"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "95c22defce09deb9318a1d61a781db8997d285a01263bee5b9f9ba224124f7b1"
    sha256 cellar: :any_skip_relocation, big_sur:       "147c8cac6493f340ff2eaef0cd9cdac8388b66519275217a6679febce2e87a93"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "f1579b7c88a487e56983b5b7a6d2c553d050f10b1c9bfa84e881e7f14b356829"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ae7f2d7eb4f8e6cd5be632ab1bf6e5be92c88e1ad646d234fc41b6e509e3405f"
  end

  # `pony attach` hands this computer to txco (`txco attach <site>`).
  depends_on "loremlabs/txco/txco"

  on_macos do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.14/pony_0.0.14_darwin_arm64.tar.gz"
      sha256 "976829b3d2e01e3fba2097e01436dab1bf019bf9c75d85ce755c308cb1bd3c06"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.14/pony_0.0.14_darwin_amd64.tar.gz"
      sha256 "595455680494c824eb1ab61da9581108e8c507275442dba01e544d81ac655c81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.14/pony_0.0.14_linux_arm64.tar.gz"
      sha256 "a2dc190dab5f1f399fae666d3baf7d015357ff446efd62ff160fe48a2a87127e"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.14/pony_0.0.14_linux_amd64.tar.gz"
      sha256 "2143808bac67c7dd4edb7ed755364da227e01a2a29e34dfb8165e2259878aaf1"
    end
  end

  def install
    bin.install "pony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pony version")
  end
end
