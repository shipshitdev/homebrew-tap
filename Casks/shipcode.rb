cask "shipcode" do
  version "0.2.2"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "03d468262e43a8488073467bd143347c402385c6af7573edab6f7a9a225517b0",
         intel: "c53ce6ceabce7361c75474b105470329614a32cd6012b81340c23df34b440177"

  url "https://github.com/shipshitdev/shipcode/releases/download/v#{version}/ShipCode-#{version}-#{arch}.dmg",
      verified: "github.com/shipshitdev/shipcode/"
  name "ShipCode"
  desc "AI-driven dev pipeline orchestrator for GitHub issues"
  homepage "https://shipcode.shipshit.dev"

  app "ShipCode.app"

  zap trash: [
    "~/Library/Application Support/ShipCode",
    "~/Library/Logs/ShipCode",
    "~/Library/Preferences/dev.shipshit.shipcode.plist",
  ]
end
