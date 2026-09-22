cask "procyon" do
  os macos: "Procyon_0.1.3_universal.dmg", linux: "Procyon_0.1.3_amd64.AppImage"

  version "0.1.3"

  on_macos do
    sha256 "70885f2b9c502206a0c093bc446196f9d89934ab03935d54d0b9b4f2d3552173"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "c9b91f911372c33f7ef4f0ee6f7e988d7840137cc4a01aab67bc8d0418379a03"

    depends_on arch: :x86_64

    app_image "Procyon_0.1.3_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.3/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
