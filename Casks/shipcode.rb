cask "shipcode" do
  version "0.2.1"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "d50f2280d025c17626e631daa9b5f059d0dcd9c2cb6135a746ad2efffc687407",
         intel: "e64c16b258b6713428cec7ac3ff76c7106b60411814e1fa2e964526de7426b39"

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
