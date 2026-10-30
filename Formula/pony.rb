class Pony < Formula
  desc "Talk to your OnePony ponies from the terminal"
  homepage "https://www.onepony.com"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.1/pony_0.0.1_darwin_arm64.tar.gz"
      sha256 "2afc6054f06c880e74174996056e46f9c3b5f2c486b96410d9cb5f46a228210e"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.1/pony_0.0.1_darwin_amd64.tar.gz"
      sha256 "82eeb4b9b93391b178ab15974258c6eac767e03b6341df9bcc9e2d725746a9c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.1/pony_0.0.1_linux_arm64.tar.gz"
      sha256 "861c36d7187d296068c4fd0e5106b3d47ed905023d44edb4780875709dbe6ce5"
    end
    on_intel do
      url "https://github.com/LoremLabs/pony/releases/download/v0.0.1/pony_0.0.1_linux_amd64.tar.gz"
      sha256 "f51e85579e1d37a623a0ea2697d6e217a376807628133e0f38e0a8c658874fe5"
    end
  end

  def install
    bin.install "pony"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pony version")
  end
end
