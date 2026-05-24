cask "work3s" do
  version "0.5.19"
  sha256 "fcdb0d750954f63dd0008e87969752e05c5858bec4eed10eb9315e4ab2ae1c21"

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
