cask "work3s" do
  version "0.4.25"
  sha256 "1efd9b88c9f00bda0fa4fe8771df8c95a9d09baa0530448db712b0292f2b9035"

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
