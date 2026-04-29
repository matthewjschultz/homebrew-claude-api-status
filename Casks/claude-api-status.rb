cask "claude-api-status" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/matthewjschultz/mjs-claude-api-status/releases/download/v#{version}/ClaudeAPIStatus.zip"
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
