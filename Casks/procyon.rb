cask "procyon" do
  os macos: "Procyon_0.1.1_universal.dmg", linux: "Procyon_0.1.1_amd64.AppImage"

  version "0.1.1"

  on_macos do
    sha256 "bbf4865444655b7d56d8f907c9efb7fc8e026857b916746f6e98906d4931aec3"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "34cee0069fe32983266ef43cc563f8f39acb903ca53867606a2fcf43ca3c4222"

    depends_on arch: :x86_64

    app_image "Procyon_0.1.1_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.1/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
