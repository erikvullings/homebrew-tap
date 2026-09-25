cask "procyon" do
  os macos: "Procyon_0.1.6_universal.dmg", linux: "Procyon_0.1.6_amd64.AppImage"

  version "0.1.6"

  on_macos do
    sha256 "ee61ca1a6911530bee85fd950a39298628ae66b1fc8a43a7a4040616f357626e"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "651938f6b3e6c3e386cb66a49c6c24fec6995aee4a4552c400283d7e77b3bf21"

    depends_on arch: :x86_64

    app_image "Procyon_0.1.6_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.6/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
