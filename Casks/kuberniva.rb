cask "kuberniva" do
  version "0.4.1"
  sha256 "25be9af8c9032c3a2feb4caabfd3977f227a6280203da58fb938ca40d0b17344"

  url "https://github.com/velqa/Kuberniva/releases/download/v#{version}/Kuberniva_#{version}_aarch64.dmg"
  name "Kuberniva"
  desc "Native desktop workspace for operating many Kubernetes clusters"
  homepage "https://github.com/velqa/Kuberniva"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64

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
