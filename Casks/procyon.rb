cask "procyon" do
  version "0.1.0-9"
  sha256 "e7150150e2db074ce626ecde4df7ecfa1849d26e7c35ba5dd2be4262ea3d5b16"

  url "https://github.com/erikvullings/fm/releases/download/v0.1.0-9/Procyon_0.1.0-9_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/fm"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
