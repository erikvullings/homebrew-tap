cask "slideframe" do
  version "0.1.0"
  sha256 "652cab8a8a44cbcad91597fb4cd61fe951c2be188fdd6c4ce5a04557e9f85f8d"

  url "https://github.com/erikvullings/SlideFrame/releases/download/v#{version}/SlideFrame-#{version}-universal.dmg"
  name "SlideFrame"
  desc "Exact-size screenshot framing guide for macOS"
  homepage "https://github.com/erikvullings/SlideFrame"

  app "SlideFrame.app"
end
