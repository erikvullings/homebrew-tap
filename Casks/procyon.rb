cask "procyon" do
  os macos: "Procyon_0.1.4_universal.dmg", linux: "Procyon_0.1.4_amd64.AppImage"

  version "0.1.4"

  on_macos do
    sha256 "16ecdfa395073cbf59617de6557d2943559eb0cf0507c9df52e513bf52703f40"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "da870d452c9cab694958982cc7da06f795371a8618fd336cb897ec7353364856"

    depends_on arch: :x86_64

    app_image "Procyon_0.1.4_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.4/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
