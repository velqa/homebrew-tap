# velqa/tap

Homebrew tap for [Kuberniva](https://github.com/velqa/Kuberniva), a fast, native desktop workspace for people who operate many Kubernetes clusters.

## Install

```bash
brew install --cask velqa/tap/kuberniva
```

Or tap once, then use the short name:

```bash
brew tap velqa/tap
brew install --cask kuberniva
```

Kuberniva is signed with an Apple Developer ID and notarized by Apple. Builds target Apple Silicon Macs.

## Update

Kuberniva updates itself from **Settings → Check for updates**. `brew upgrade --cask kuberniva` also works.

## Uninstall

```bash
brew uninstall --cask kuberniva
```

Add `--zap` to also remove Kuberniva's local caches, logs, and saved workspace data.

## License

The tap is released under the [MIT License](LICENSE). Kuberniva itself is released under the [MIT License](https://github.com/velqa/Kuberniva/blob/main/LICENSE).
