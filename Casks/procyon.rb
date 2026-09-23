cask "procyon" do
  os macos: "Procyon_0.1.5_universal.dmg", linux: "Procyon_0.1.5_amd64.AppImage"

  version "0.1.5"

  on_macos do
    sha256 "0a0e6a49d752ef00782d351661e1639a40548a9dd511a25fb0aa09a8d7e069ac"

    app "Procyon.app"
    binary "#{appdir}/Procyon.app/Contents/Resources/procyon", target: "procyon"
  end
  on_linux do
    sha256 "91cab242cea06570a8c91411b6ec2c233c0c2730cf69f830040a6b0f8717fe62"

    depends_on arch: :x86_64

    app_image "Procyon_0.1.5_amd64.AppImage", target: "Procyon.AppImage"
  end

  url "https://github.com/erikvullings/procyon/releases/download/v0.1.5/#{os}"
  name "Procyon"
  desc "Dual-pane file manager"
  homepage "https://github.com/erikvullings/procyon"
end
