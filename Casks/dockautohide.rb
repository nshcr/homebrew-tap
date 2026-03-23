cask "dockautohide" do
  version "0.2.1"
  sha256 "7851dd98742143c8e217d60273d4d1bb115ab28da71e323f953df8a924d3961f"

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
