cask "dockautohide" do
  version "0.2.2"
  sha256 "d1897b11f36d60140b3314fcdea70e12bc32d82eb21f7f2256a59317ddc458d8"

  url "https://github.com/nshcr/DockAutoHide/releases/download/v#{version}/DockAutoHide-#{version}-universal.dmg"
  name "DockAutoHide"
  desc "Auto-hide the Dock only when a window would cover it"
  homepage "https://github.com/nshcr/DockAutoHide"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "DockAutoHide.app"

  zap trash: [
    "~/Library/Preferences/io.github.nshcr.DockAutoHide.plist",
    "~/Library/Saved Application State/io.github.nshcr.DockAutoHide.savedState",
  ]
end
