cask "kuberniva" do
  version "0.4.2"
  sha256 "0dc5838749716f4795d91265b57a802fd6702335d890867e6eb80e343d90a91e"

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
