cask "procyon" do
  version "0.1.0-7"
  sha256 "af8c1dc3e6f97ae7785ab34bff224279d07ead83e29641226b7fccd0ec03200c"

  url "https://github.com/erikvullings/fm/releases/download/v0.1.0-7/Procyon_0.1.0-7_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/fm"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
