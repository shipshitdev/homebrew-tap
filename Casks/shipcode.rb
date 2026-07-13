cask "shipcode" do
  version "0.2.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "964dfd10c50a838b4e997bf2a8e9afcf5aac0f3290c3cac6054b2b6a9f8f9675",
         intel: "443d9002a30c5b43dd1e740a6874c31b0e1b32d3b158cef3ad1725b2df9fe6ca"

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
