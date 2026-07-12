cask "shipcode" do
  version "0.2.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "d73f6e70c20788101117c71848b9ea9e84b235b94fbc59a81b5c8dbe90886755",
         intel: "7d14cf9096a2cd3c69c3d5f9e2614d7df8e5d8cc0d9a7e9b507545347592399d"

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
