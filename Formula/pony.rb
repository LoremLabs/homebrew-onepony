class Pony < Formula
  desc "Talk to your OnePony ponies from the terminal"
  homepage "https://www.onepony.com"
  license "MIT"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/LoremLabs/pony/releases/download/v0.0.2"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "732ec7d73359d66861e77775407fd6668ea321c6d9f1a751d32560c1108a6b35"
    sha256 cellar: :any_skip_relocation, big_sur:       "13d07c97efef38032d8597f9b453406ebb91f9eb646431f5be509f69e764789a"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "8bb8fc40905a2470be1964d76592e6d6c37f1bd957d1d33c444ee4737e90939f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "612a1e5e1f4a591f8ebab74cd576d51dc9fc513879feb1ebf126256e8fbeb5bb"
  end

  on_macos do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.2/pony_0.0.2_darwin_arm64.tar.gz"
      sha256 "e8dd3fddb271fb364acb9162ee7d80086bd51362b02b4ad68b474936a2d1c4fe"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.2/pony_0.0.2_darwin_amd64.tar.gz"
      sha256 "74a520fa17df10eb5a59c5d14f85966ec08890c7b1e9e121c22e3a669cae105a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.2/pony_0.0.2_linux_arm64.tar.gz"
      sha256 "8d626222cd965902c3cbf46ef7644b1463b0284eaf0fb5c9cb2822d27981ac61"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.2/pony_0.0.2_linux_amd64.tar.gz"
      sha256 "49884752fded9e7d82ee515755c4895cf42f374865ef4d3ca70f5d680fb4627c"
    end
  end

  def install
    bin.install "pony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pony version")
  end
end
