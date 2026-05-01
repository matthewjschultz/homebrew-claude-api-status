cask "claude-api-status" do
  version "1.3"
  sha256 "2aa496f42b596ffb2b61757e3b614d895fd23326ef7c090cafd5699964665536"

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
