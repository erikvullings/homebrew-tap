cask "procyon" do
  os macos: "Procyon_0.4.1_universal.dmg", linux: "Procyon_0.4.1_amd64.AppImage"

  version "0.4.1"

  on_macos do
    sha256 "b0e5a369ac57aa3a674170c92272fab7a0b7aee3031a8d6bbca4661bfc904639"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "74151e1261c1118d7842895def161f20d0c8d7c0f9c2eb37e6385c02bbeeb1a2"

    depends_on arch: :x86_64

    app_image "Procyon_0.4.1_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.4.1/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
