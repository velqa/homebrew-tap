cask "kuberniva" do
  version "0.6.0"
  sha256 "170f2ba03b64b279fa4770bb33274477679b6403367fa1d70fb45f687fec0190"

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
