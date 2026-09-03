cask "procyon" do
  version "0.1.0-18"
  sha256 "7681b4f44d6e7dc42e6b1420faa6c86cddfddf81491d3e360d0dbf5808f44081"

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0-18/Procyon_0.1.0-18_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
