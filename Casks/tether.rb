cask "tether" do
  version "1.2.0"
  sha256 "81c2f1c638bf5657b136058eeadc142d786c366b5e866159d755bba94e0f5542"

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
