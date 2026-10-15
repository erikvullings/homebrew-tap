cask "procyon" do
  os macos: "Procyon_0.5.0-2_aarch64.dmg", linux: "Procyon_0.5.0-2_amd64.AppImage"

  version "0.5.0-2"

  on_macos do
    sha256 "50acb9ef6098cf8e87bf1019f8f79d8f1ef057edb28155423a718eb6f6ae6e5c"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "36f4c32a7c5b307529ab53bc0e285808593fe7645baa9183e4e7de2b1b15a8bc"

    depends_on arch: :x86_64

    app_image "Procyon_0.5.0-2_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.5.0-2/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
