cask "procyon" do
  os macos: "Procyon_0.2.2_universal.dmg", linux: "Procyon_0.2.2_amd64.AppImage"

  version "0.2.2"

  on_macos do
    sha256 "9648bf103620c60b126c59bfc696621ff5600a2e25efb0787821f81a9ba70773"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "3aa342f83de751e4e24858d0fe067fc151f9b9b1521420fcad1131b421e3bc58"

    depends_on arch: :x86_64

    app_image "Procyon_0.2.2_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.2.2/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
