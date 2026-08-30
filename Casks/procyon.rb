cask "procyon" do
  version "0.1.0-10"
  sha256 "e2f4cc8edf2faa36648c4f38b7d1187dcefe8c0b919d5220690357200a1bd981"

  url "https://github.com/erikvullings/fm/releases/download/v0.1.0-10/Procyon_0.1.0-10_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/fm"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
