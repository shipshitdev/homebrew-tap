cask "meterbar" do
  version "1.1"
  sha256 "464a1c6a73b4f29c4f9a75a72f6b6e2e2fb11fcc64c07ea939548790a31d6106"

  url "https://github.com/shipshitdev/meterbar.app/releases/download/v#{version}/MeterBar-v#{version}.zip",
      verified: "github.com/shipshitdev/meterbar.app/"
  name "MeterBar"
  desc "Track AI coding assistant usage limits from the menu bar"
  homepage "https://github.com/shipshitdev/meterbar.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "MeterBar.app"
  binary "#{appdir}/MeterBar.app/Contents/Helpers/meterbar", target: "meterbar"

  postflight do
    # Remove quarantine attribute for unsigned app
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/MeterBar.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Scripts/dev.shipshit.MeterBar",
    "~/Library/Application Scripts/dev.shipshit.MeterBar.Widget",
    "~/Library/Application Support/MeterBar",
    "~/Library/Caches/dev.shipshit.MeterBar",
    "~/Library/Containers/dev.shipshit.MeterBar",
    "~/Library/Containers/dev.shipshit.MeterBar.Widget",
    "~/Library/Group Containers/group.dev.shipshit.MeterBar",
    "~/Library/HTTPStorages/dev.shipshit.MeterBar",
    "~/Library/Preferences/dev.shipshit.MeterBar.plist",
    "~/Library/Saved Application State/dev.shipshit.MeterBar.savedState",
  ]
end
