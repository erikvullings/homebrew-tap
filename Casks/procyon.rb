cask "procyon" do
  os macos: "Procyon_0.3.1_universal.dmg", linux: "Procyon_0.3.1_amd64.AppImage"

  version "0.3.1"

  on_macos do
    sha256 "58f2d7a6de47583569869afab8d1b75a1a1d45edaf1a08aeef2c244ad3e32b07"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "87ee1e5b07e914faf6d65d2229ef66e4ad23b1068d28d610b4c5cc5aa471fe41"

    depends_on arch: :x86_64

    app_image "Procyon_0.3.1_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.3.1/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
