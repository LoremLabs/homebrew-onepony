class Pony < Formula
  desc "Talk to your OnePony ponies from the terminal"
  homepage "https://www.onepony.com"
  license "MIT"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/LoremLabs/pony/releases/download/v0.0.11"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "43c70909b3ccd0c47c64bc98e47ec196bb0e3078ae8c21c5ee80f04906343f49"
    sha256 cellar: :any_skip_relocation, big_sur:       "bd16ed871da2563381739b11aa647eed82f515c362a806fe0b3c8ac059910fd5"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "c8698d81f234088287ae3adefe37cc9ffdc674145bd360ec7ce3f3e6099dfd30"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "8f13701865f30a31f284c8f29ccce41e8463f2cb795c2d9eff9dff707cae9fa6"
  end

  on_macos do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.11/pony_0.0.11_darwin_arm64.tar.gz"
      sha256 "6af91515bd50f208b44b9c78f988d0d01b68779e6283ffb0ccdac4d74c1a06cb"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.11/pony_0.0.11_darwin_amd64.tar.gz"
      sha256 "e46db53529b1ec00d5768065db375b338a9c33777b2bd26fddf95b3af19b6387"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.11/pony_0.0.11_linux_arm64.tar.gz"
      sha256 "05af02b5b6a575c8cc7c199c7113d0afb44726b475f32d0066de569368e401f7"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.11/pony_0.0.11_linux_amd64.tar.gz"
      sha256 "036593f240397f568cb4a57b49288deded8f7ff81e1ce1a3c11a9e39c46dcf9a"
    end
  end

  def install
    bin.install "pony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pony version")
  end
end
