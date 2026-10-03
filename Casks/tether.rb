cask "tether" do
  version "1.1.2"
  sha256 "7f86d5e86751d50eabf1f16b0b1e3d0dde1acaa7aa9cdded07bdb1c314aa95f4"

  url "https://github.com/u1f60a/tether/releases/download/v#{version}/Tether-#{version}.zip"
  name "Tether"
  desc "Mirror and control an Android phone over Wi-Fi or Tailscale"
  homepage "https://github.com/u1f60a/tether"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on cask: "android-platform-tools"
  depends_on formula: "scrcpy"
  depends_on macos: :sonoma

  app "Tether.app"
  binary "#{appdir}/Tether.app/Contents/Resources/phone"

  uninstall quit: "io.github.u1f60a.tether"

  zap trash: [
    "~/Library/Application Support/Tether",
    "~/Library/Logs/Tether",
    "~/Library/Preferences/io.github.u1f60a.tether.plist",
  ]
end
