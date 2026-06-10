cask "noetica" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/SocioProphet/Noetica/releases/download/v#{version}/Noetica_#{version}_x64.dmg"
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
