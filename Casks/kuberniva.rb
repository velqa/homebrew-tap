cask "kuberniva" do
  version "0.6.3"
  sha256 "8f31a25997d77574b27e7193acef42e8f4c8e17acf8483e5ac67f6932dc1e8e6"

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
