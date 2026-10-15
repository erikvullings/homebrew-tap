cask "procyon" do
  os macos: "Procyon_0.5.0-1_aarch64.dmg", linux: "Procyon_0.5.0-1_amd64.AppImage"

  version "0.5.0-1"

  on_macos do
    sha256 "40aa7fc67415dd39f98c9bbad46291514190dd64c40994747d2d6a90ee91ac47"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "f58060f37c9a1340d9c4222527694f9e301721faf029b78e4a3ac90fdc3517b7"

    depends_on arch: :x86_64

    app_image "Procyon_0.5.0-1_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.5.0-1/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
