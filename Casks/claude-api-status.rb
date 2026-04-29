cask "claude-api-status" do
  version "1.0.0"
  sha256 "27b3b1d576293173e1f295284a89464dcf6025de1ec63d943202453b07386f10"

  url "https://github.com/matthewjschultz/mjs-claude-api-status/releases/download/v#{version}/ClaudeAPIStatus-#{version}.dmg"
  name "Claude API Status"
  desc "Menu bar app monitoring Claude API and Claude Code status"
  homepage "https://github.com/matthewjschultz/mjs-claude-api-status"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "ClaudeAPIStatus.app"

  zap trash: [
    "~/Library/Application Support/ClaudeAPIStatus",
  ]
end
