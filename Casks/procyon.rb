cask "procyon" do
  version "0.1.0-20"
  sha256 "fb802d145481d82eecfeaa44aa6293e864930c6be4b10d7c72854fce88d2ec42"

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0-20/Procyon_0.1.0-20_universal.dmg"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"

  app "Procyon.app"
  binary "#{appdir}/Procyon.app/Contents/MacOS/Procyon", target: "procyon"
end
