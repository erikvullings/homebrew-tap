cask "procyon" do
  os macos: "Procyon_0.1.2_universal.dmg", linux: "Procyon_0.1.2_amd64.AppImage"

  version "0.1.2"

  on_macos do
    sha256 "6776b3fce4060db3627134e482ee4dcaf7de52f437e68c963cbe0b3bd568775c"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "3878577b553c78fd4d1f7f4564115d6f1e50d93ebd88b50463d118037224a3dd"

    depends_on arch: :x86_64

    app_image "Procyon_0.1.2_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.2/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
