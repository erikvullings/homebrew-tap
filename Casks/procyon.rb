cask "procyon" do
  version "0.1.0-11"
  sha256 "5e2014d16d1d6e0fa370fd77e615d8e412e340e97de5f9c68b912bbf05ef8460"

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0-11/Procyon_0.1.0-11_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
