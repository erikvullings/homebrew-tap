cask "procyon" do
  version "0.1.0-17"
  sha256 "8e88a46423472bad0ec06c02384fd35205db55ea140e8923217017bb4a671167"

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0-17/Procyon_0.1.0-17_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
