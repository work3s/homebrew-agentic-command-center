cask "work3s" do
  version "0.5.21"
  sha256 "4fc98ca82cafb07632c158ccc5e5f848b0a000880a7d115ec633410438cce932"

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
