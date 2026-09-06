cask "procyon" do
  version "0.1.0-22"
  sha256 "0c2bc8495f7c942e2ccd3ebba578c502aa68fdb17a9f8ffe6c4e7f463f228a1e"

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0-22/Procyon_0.1.0-22_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
end
