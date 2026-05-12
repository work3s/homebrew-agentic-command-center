cask "work3s" do
  version "0.5.6"
  sha256 "2e78af21c8e43f5dfeee58676df879358c04b32e26d8de38a4976a2e302b2f37"

  url "https://github.com/work3s/desktop/releases/download/v#{version}/Work3s_#{version}_aarch64.dmg"
  name "Work3s"
  desc "Agentic command center for Git worktrees"
  homepage "https://github.com/work3s/desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Work3s.app"

  zap trash: [
    "~/Library/Application Support/com.work3s.desktop",
    "~/Library/Caches/com.work3s.desktop",
    "~/Library/Preferences/com.work3s.desktop.plist",
    "~/Library/Saved Application State/com.work3s.desktop.savedState",
  ]
end
