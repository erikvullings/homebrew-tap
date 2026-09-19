cask "procyon" do
  os macos: "Procyon_0.1.0_universal.dmg", linux: "Procyon_0.1.0_amd64.AppImage"

  version "0.1.0"

  on_macos do
    sha256 "51c4eb821b46994fb0a98caf14ea3b26930542ad898ccb65b0ace1ae40a539f5"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "bed53345f26ee0201be82eacb8e3100370b65f8f4e956615cd01f9a4eb2f66c4"

    depends_on arch: :x86_64

    app_image "Procyon_0.1.0_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.0/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
