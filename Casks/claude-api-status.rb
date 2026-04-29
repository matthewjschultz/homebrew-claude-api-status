cask "claude-api-status" do
  version "1.0.0"
  sha256 "476e6f54a2aa0fe6032f6b5e2951bb0be0ee30bb335410d964792c062c6a7a73"

  url "https://github.com/matthewjschultz/mjs-claude-api-status/releases/download/v#{version}/ClaudeAPIStatus-#{version}.zip"
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
