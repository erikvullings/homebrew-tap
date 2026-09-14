cask "procyon" do
  os macos: "Procyon_0.1.0-26_universal.dmg", linux: "Procyon_0.1.0-26_amd64.AppImage"

  version "0.1.0-26"

  on_macos do
    sha256 "d6a6659009dd33c59fd4caec4b40d4b6712c335eabc5b55ddba7449b34a48bde"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "cefb61f45d8e49af4245848d3a08962540587977b107664d85f1329c5fc047af"

    depends_on arch: :x86_64

    app_image "Procyon_0.1.0-26_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0-26/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
