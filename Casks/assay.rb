# The Homebrew cask for Assay's desktop app (E20). Filled in by
# desktop/release.sh and published to the homebrew-assay tap:
#
#     brew install --cask --no-quarantine bakhtiyorjon-begmukhammadov/assay/assay
#
# --no-quarantine because the app is not signed with an Apple identity yet
# (E20 D5, ruled 2026-09-15); without it macOS refuses to open it.
cask "assay" do
  version "0.1.1"
  sha256 "32ca9b8a3d6c8ee6554a1c968e0c0e751dcd93109290122fb13fcedeccdbeb63"

  url "https://app.goassay.io/desktop/Assay-#{version}.dmg"
  name "Assay"
  desc "Helper for the Assay marketplace, in the menu bar"
  homepage "https://goassay.io/"

  depends_on macos: :ventura

  app "Assay.app"

  caveats <<~EOS
    Assay is not yet signed with an Apple identity. Install with --no-quarantine,
    or after installing: System Settings › Privacy & Security › Open Anyway.
    It needs Docker Desktop and Claude Code on this Mac; the app says which is missing.
  EOS
end
