cask "procyon" do
  os macos: "Procyon_0.2.1_universal.dmg", linux: "Procyon_0.2.1_amd64.AppImage"

  version "0.2.1"

  on_macos do
    sha256 "a18a368a3bb1be49db6c0e4f1fb0daeac5c9ec5c7ce524dca1114a04855fbadf"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "10444ac78fd642f897b9f6f47d38b6d6cca9ad972aa2d4886e3824e880a176d8"

    depends_on arch: :x86_64

    app_image "Procyon_0.2.1_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.2.1/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
