cask "procyon" do
  version "0.1.0-6"
  sha256 "ec16a974646fb4edef9ad05438cfe2549a30371a97f0552c4e661320db700096"

  url "https://github.com/erikvullings/fm/releases/download/v0.1.0-6/Procyon_0.1.0-6_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/fm"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
