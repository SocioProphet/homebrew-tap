cask "noetica" do
  version "0.4.24"
  sha256 "d8c8c6a46dacd341eb1c0ec60a8c87865b11227aedd49c5afe4825473a0d8f2a"

  url "https://github.com/SocioProphet/Noetica/releases/download/v0.4.24/Noetica_0.4.24_universal.dmg"
  # sha256 and url are updated automatically by the update-cask CI job after each tagged release.
  name "Noetica"
  desc "Local-first AI workstation with knowledge graph, attention economics, and A2A zero-trust"
  homepage "https://github.com/SocioProphet/Noetica"

  depends_on macos: :ventura

  app "Noetica.app"

  caveats <<~EOS
    Noetica requires its agent-machine sidecar to be running for full functionality.
    It starts automatically when the app launches.

    On first launch (and after an update) the app loads its knowledge brains (academic +
    operations) from the release in the background — a one-time download. Check progress at
    http://127.0.0.1:8080/api/brain/status. To skip it, set NOETICA_BRAIN_AUTO_PROVISION=0.

    If macOS Gatekeeper blocks the app after install, run:
      sudo xattr -dr com.apple.quarantine /Applications/Noetica.app
  EOS

  zap trash: [
    "~/Library/Application Support/ai.noetica.app",
    "~/Library/Logs/ai.noetica.app",
    "~/Library/Preferences/ai.noetica.app.plist",
    "~/Library/Saved Application State/ai.noetica.app.savedState",
    "~/.noetica",
  ]
end
