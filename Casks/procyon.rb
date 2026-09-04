cask "procyon" do
  version "0.1.0-21"
  sha256 "021e62016075c4c9f67776560d0f61c1e61848d61b30fc1e34eb82c11d78e56b"

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0-21/Procyon_0.1.0-21_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
end
