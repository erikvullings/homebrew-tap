cask "procyon" do
  version "0.1.0-14"
  sha256 "0b98cd5d5994811d7ff6077109e99574972304fcf80fa1ac38f127320e466ccf"

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0-14/Procyon_0.1.0-14_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
