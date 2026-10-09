cask "procyon" do
  os macos: "Procyon_0.4.2_universal.dmg", linux: "Procyon_0.4.2_amd64.AppImage"

  version "0.4.2"

  on_macos do
    sha256 "301c89d0ccaa702aae044ecfaaa9cbe4daf617c0eec79741c8c941341320f237"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "b79c309a5da27caf1e946d7b08ed027eda9003f270f10b03314920ac12a56913"

    depends_on arch: :x86_64

    app_image "Procyon_0.4.2_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.4.2/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
