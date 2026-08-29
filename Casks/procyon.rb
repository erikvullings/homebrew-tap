cask "procyon" do
  version "0.1.0-8"
  sha256 "e545ef7082153e232ae332173ebd85717a3fe1ad4abdce60bed380add9e093a7"

  url "https://github.com/erikvullings/fm/releases/download/v0.1.0-8/Procyon_0.1.0-8_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/fm"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
