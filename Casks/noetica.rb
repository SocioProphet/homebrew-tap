cask "noetica" do
  version "0.4.6"
  sha256 "f0f15f354bf5eb870f72cd30d336f54aeaaa020fad170758d41f58c3508ba5a8"

  url "https://github.com/SocioProphet/Noetica/releases/download/v#{version}/Noetica_0.1.0_aarch64.dmg"
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
