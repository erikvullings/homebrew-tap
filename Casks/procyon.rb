cask "procyon" do
  version "0.1.0-19"
  sha256 "a5e22dc659e4d6e09c307cfc8d8fb1bf7fb645a5d07fe57521f3ce03b079d355"

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0-19/Procyon_0.1.0-19_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
