# homebrew-onepony

Homebrew tap for [`pony`](https://github.com/LoremLabs/pony), the command
line for [OnePony](https://www.onepony.com).

## Install

```sh
brew install loremlabs/onepony/pony
```

Use the full name. Homebrew 7 trusts a formula installed by its full name;
after a bare `brew tap loremlabs/onepony`, `brew install pony` is refused
until you run `brew trust --formula loremlabs/onepony/pony`.

Then:

```sh
pony version
```

## Notes

- `Formula/pony.rb` is written by the release workflow of
  [LoremLabs/pony](https://github.com/LoremLabs/pony) on each tagged
  release. Don't edit it by hand.
- The formula installs a prebuilt binary for macOS (arm64, amd64) or Linux
  (arm64, amd64). No compiler or toolchain is needed.
