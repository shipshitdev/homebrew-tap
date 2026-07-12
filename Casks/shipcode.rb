cask "shipcode" do
  version "0.2.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "4f6d9674d8220dff26be9a78a614c64b6814501bebbf9671b3555857bc3fb749",
         intel: "9359b77e9672f659afbfb070f65c349d92f8beb1c4a9d49ee6b98005c04dc608"

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
