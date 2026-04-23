cask "shiplead" do
  arch arm: "arm64", intel: "x64"

  version "0.0.1"
  sha256 arm:   "4bf82b44f5d6cb375992e18bc712df3ae245098b9560557dff45242c846b9ca3",
         intel: "4a35eec04a85dcdf4663977efcba1faae779d890c502900045fab1be26d87061"

  url "https://github.com/shipshitdev/shiplead/releases/download/v#{version}/ShipLead-#{version}-#{arch}.dmg",
      verified: "github.com/shipshitdev/shiplead/"
  name "ShipLead"
  desc "Local-first agentic CRM for founder-led sales"
  homepage "https://shiplead.shipshit.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "ShipLead.app"

  postflight do
    # Remove quarantine attribute for unsigned app
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/ShipLead.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/ShipLead",
    "~/Library/Caches/dev.shipshit.shiplead",
    "~/Library/HTTPStorages/dev.shipshit.shiplead",
    "~/Library/Preferences/dev.shipshit.shiplead.plist",
    "~/Library/Saved Application State/dev.shipshit.shiplead.savedState",
  ]
end
