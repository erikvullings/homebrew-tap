cask "procyon" do
  version "0.1.0-23"
  sha256 "b2394dac8c6d346dcc34177e862e19e945ccfb815f6bc98ff725896b71e13926"

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0-23/Procyon_0.1.0-23_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
end
