cask "claude-api-status" do
  version "1.1.0"
  sha256 "eb75eed5533817ad01f1cdb65a829f1ab5bc2309c9acd1f47cbe4bfbd8c7634d"

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
