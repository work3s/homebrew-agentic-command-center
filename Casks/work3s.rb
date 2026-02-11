cask "work3s" do
  version "0.4.7"
  sha256 "ea3cf504d3545daaf8ad29f4b5ab15e0d0c1ea6309f7ea70a957168385faae83"

  url "https://github.com/EddyFromPoker/work3s-desktop/releases/download/v#{version}/Work3s_#{version}_aarch64.dmg"
  name "Work3s"
  desc "Git worktree management for macOS"
  homepage "https://github.com/EddyFromPoker/work3s-desktop"

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
