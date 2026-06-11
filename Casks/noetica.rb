cask "noetica" do
  version "0.4.6"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/SocioProphet/Noetica/releases/download/untagged-4a3a5f9b6cbf3c4ade43/Noetica_0.1.0_aarch64.dmg"
  name "Noetica"
  desc "SourceOS-native AI operating workspace"
  homepage "https://github.com/SocioProphet/Noetica"

  auto_updates false
  depends_on macos: ">= :ventura"

  app "Noetica.app"

  zap trash: [
    "~/Library/Application Support/ai.noetica.app",
    "~/Library/Preferences/ai.noetica.app.plist",
    "~/Library/Caches/ai.noetica.app",
    "~/Library/Logs/ai.noetica.app",
  ]
end
