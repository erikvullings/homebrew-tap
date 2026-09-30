cask "procyon" do
  os macos: "Procyon_0.3.0_universal.dmg", linux: "Procyon_0.3.0_amd64.AppImage"

  version "0.3.0"

  on_macos do
    sha256 "85b01b1fba32485cf92c3595c331cd97ed8ec5e5078643073458281089610a6a"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "d80fa78eb09c58672a454f713f69c1b99bb51945d5d7973144345c0b543567cf"

    depends_on arch: :x86_64

    app_image "Procyon_0.3.0_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.3.0/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
