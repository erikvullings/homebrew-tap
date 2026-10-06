cask "procyon" do
  os macos: "Procyon_0.4.0_universal.dmg", linux: "Procyon_0.4.0_amd64.AppImage"

  version "0.4.0"

  on_macos do
    sha256 "13219ebff0e3487e3b494efe6c60f22168a4066e6fd8f3ae4969daf4b5f1b4fc"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "b23ad4fd1a45409108ee508ea348030937d3a43110dd20b1567d7040ac0834a3"

    depends_on arch: :x86_64

    app_image "Procyon_0.4.0_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.4.0/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
