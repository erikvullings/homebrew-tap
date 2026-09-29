cask "procyon" do
  os macos: "Procyon_0.2.0_universal.dmg", linux: "Procyon_0.2.0_amd64.AppImage"

  version "0.2.0"

  on_macos do
    sha256 "0576ffe9b693cfd1acbd252546141453550b692fc3d856a553e64b1ba9b7fb5a"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "3517bca613ea9ab61bfcd5ed854a39b93445caa256931de1ce2d9b3769ce1be0"

    depends_on arch: :x86_64

    app_image "Procyon_0.2.0_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.2.0/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
