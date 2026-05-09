cask "claude-api-status" do
  version "1.6"
  sha256 "d4d35e0698e84aa34480911b43861ca8abd58be1bb767e510ae10983c0811a81"

  url "https://github.com/matthewjschultz/homebrew-claude-api-status/releases/download/v#{version}/ClaudeAPIStatus-#{version}.dmg"
  name "Claude API Status"
  desc "Menu bar app monitoring Claude API and Claude Code status"
  homepage "https://github.com/matthewjschultz/homebrew-claude-api-status"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "ClaudeAPIStatus.app"

  zap trash: [
    "~/Library/Application Support/ClaudeAPIStatus",
  ]
end
