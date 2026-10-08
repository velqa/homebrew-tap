cask "kuberniva" do
  version "0.6.1"
  sha256 "29539576b0c4ef448bdb1614d59ed100224b19d76e4e12d3cb9167de9b1792d7"

  url "https://github.com/velqa/Kuberniva/releases/download/v#{version}/Kuberniva_#{version}_universal.dmg"
  name "Kuberniva"
  desc "Native desktop workspace for operating many Kubernetes clusters"
  homepage "https://github.com/velqa/Kuberniva"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Kuberniva.app"

  zap trash: [
    "~/Library/Application Support/com.kuberniva.desktop",
    "~/Library/Caches/com.kuberniva.desktop",
    "~/Library/HTTPStorages/com.kuberniva.desktop",
    "~/Library/Logs/com.kuberniva.desktop",
    "~/Library/Preferences/com.kuberniva.desktop.plist",
    "~/Library/Saved Application State/com.kuberniva.desktop.savedState",
    "~/Library/WebKit/com.kuberniva.desktop",
  ]
end
