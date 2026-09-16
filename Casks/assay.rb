# The Homebrew cask for Assay's desktop app (E20). Filled in by
# desktop/release.sh and published to the homebrew-assay tap:
#
#     brew install --cask goassay/assay/assay
#
# The app is not signed with an Apple identity yet (E20 D5, ruled
# 2026-09-15), so the first open needs Open Anyway in System Settings —
# Homebrew 7 dropped the --no-quarantine flag that used to skip that.
cask "assay" do
  version "0.1.11"
  sha256 "23dd6da770c73a879e1c3bc4cbbdce9ca48fd349783c2ac5dde96911e022435d"

  url "https://app.goassay.io/desktop/Assay-#{version}.dmg"
  name "Assay"
  desc "Helper for the Assay marketplace, in the menu bar"
  homepage "https://goassay.io/"

  depends_on macos: :ventura

  app "Assay.app"

  caveats <<~EOS
    Assay is not yet signed with an Apple identity, so the first open is refused once.
    Then: System Settings › Privacy & Security › Open Anyway — or, in a terminal:
        xattr -dr com.apple.quarantine /Applications/Assay.app
    It needs Docker Desktop and Claude Code on this Mac; the app says which is missing.
  EOS
end
