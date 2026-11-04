class Pony < Formula
  desc "Talk to your OnePony ponies from the terminal"
  homepage "https://www.onepony.com"
  license "MIT"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/LoremLabs/pony/releases/download/v0.0.3"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "fc97657c0d63b804a1e8aa317a2f9e342787d2b8749c9dd5f6ea87ae593a597e"
    sha256 cellar: :any_skip_relocation, big_sur:       "57e2427609572bede4c4a537dba6d2d985e5a7d6c4f771d979105fc23de98320"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "cad739462eda2e8631074f09758d946f861842f55ce508cf7b832a0f1ed49c00"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "0590da9dcb794e75bac1a58ff410a9e70f0e52f018463fe9797775b38f6c09f4"
  end

  on_macos do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.3/pony_0.0.3_darwin_arm64.tar.gz"
      sha256 "d9064b0272db1f9ce3b21ecfe712a66c405aa8803490151d70ff65b39c083e7a"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.3/pony_0.0.3_darwin_amd64.tar.gz"
      sha256 "c9a0ff23047cd292596cc700b79062d35e5cc52add4ff951b40c96a139f121df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.3/pony_0.0.3_linux_arm64.tar.gz"
      sha256 "90b2556d3b04eee50238c58eeb09986565b79fb61dc52bb2739bff8a0cfaf9a2"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.3/pony_0.0.3_linux_amd64.tar.gz"
      sha256 "468957a682b25bbb08cc62c4973c3400f411764fb305edfde271512f84114c1a"
    end
  end

  def install
    bin.install "pony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pony version")
  end
end
