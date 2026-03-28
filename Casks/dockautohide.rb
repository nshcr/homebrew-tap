cask "dockautohide" do
  version "0.2.3"
  sha256 "7170e72552bf6a055b382a7a2157f168d2f64abb9e6d5c04da1bffcc6ded4f03"

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
