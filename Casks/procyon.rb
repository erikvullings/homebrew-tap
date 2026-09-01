cask "procyon" do
  version "0.1.0-13"
  sha256 "d83e76bbfc7cf21c72a1be95b9ddee030c21070299e68fc0348ab5f57ef840e0"

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0-13/Procyon_0.1.0-13_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
