cask "claude-api-status" do
  version "2.0"
  sha256 "7813fbc0d428b665d0e10e246043486e1a962c01a89a8c585f476e3b2353ea7d"

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
