# Assay — Homebrew tap

The desktop app for [Assay](https://goassay.io): your helper in the menu bar.

    brew install --cask bakhtiyorjon-begmukhammadov/assay/assay

The app is not yet signed with an Apple identity;
macOS refuses the first open (then System Settings › Privacy & Security ›
Open Anyway, or `xattr -dr com.apple.quarantine /Applications/Assay.app`). It needs Docker Desktop and
Claude Code on the Mac; the app says which is missing.

Updates: `brew upgrade --cask assay`. The cask is written by `desktop/release.sh`
in the main repository.
