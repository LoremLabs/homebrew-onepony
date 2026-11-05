class Pony < Formula
  desc "Talk to your OnePony ponies from the terminal"
  homepage "https://www.onepony.com"
  license "MIT"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/LoremLabs/pony/releases/download/v0.0.8"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "edeacd788dd30470f721ff44f798153cd9a0e9a24b536396754c22fa133f1e17"
    sha256 cellar: :any_skip_relocation, big_sur:       "3ce4a8de96aa5dcd3dad2800569e1df8bf1580453e82dd9b412298c75b382e4a"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "3e2f569e8db5e86435f77649b0bf5b201ea6de1c0f72a95f55f5e3292063940e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "f81d0d686b01ed8db4b18486ae1f2d2639b71d5157cd1b1053dcc466cc74d843"
  end

  on_macos do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.8/pony_0.0.8_darwin_arm64.tar.gz"
      sha256 "958194a4b7b5704fed0f7984c795de56c193c96b2ae89e2769a9d184283faca0"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.8/pony_0.0.8_darwin_amd64.tar.gz"
      sha256 "0f09f485463c8fae5d8781eaf89b9db2492ee54fce0de184b7402f8bde3a918b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.8/pony_0.0.8_linux_arm64.tar.gz"
      sha256 "01ce43ae77714161574c5fb236c70bdf8083cc82cc4ee4bdbea458537f4613b3"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.8/pony_0.0.8_linux_amd64.tar.gz"
      sha256 "3dfedb29f0e3683eac719f594c748fa9110d90f28e29b9b6e154f6de046689c1"
    end
  end

  def install
    bin.install "pony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pony version")
  end
end
