cask "claude-api-status" do
  version "1.8"
  sha256 "d5ceedf722fe0ba69d39d51c8b44e172656fb180c0b2ac160d8e68a3fa9b7fad"

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
