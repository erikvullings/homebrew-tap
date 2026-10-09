cask "procyon" do
  os macos: "Procyon_0.4.2_universal.dmg", linux: "Procyon_0.4.2_amd64.AppImage"

  version "0.4.2"

  on_macos do
    sha256 "87d83275890886a2cac5b75729c76225dd34a50e338298b4c8381a0f2571058f"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "ae51f3500b3c0faa9939b743fd452333afc5b074368d667ce9e7a8253526f76e"

    depends_on arch: :x86_64

    app_image "Procyon_0.4.2_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.4.2/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
