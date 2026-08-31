cask "procyon" do
  version "0.1.0-12"
  sha256 "24a1b46b927e370ef0c58199d841bbc9bb975650a275baa07bcb4b540c299302"

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0-12/Procyon_0.1.0-12_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
