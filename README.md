# u1f60a/tap

Homebrew tap for [Tether](https://github.com/u1f60a/tether): use your Android phone from your Mac, over Wi-Fi or Tailscale.

```sh
brew install --cask u1f60a/tap/tether
```

This also installs [scrcpy](https://github.com/Genymobile/scrcpy) and Android's platform tools (`adb`), which Tether uses. Tether updates itself; `brew upgrade` works too.

The cask is updated automatically by Tether's release workflow.
