# Assay — Homebrew tap

The desktop app for [Assay](https://goassay.io): your helper in the menu bar.

    brew install --cask --no-quarantine bakhtiyorjon-begmukhammadov/assay/assay

`--no-quarantine` because the app is not yet signed with an Apple identity;
without it macOS refuses to open it (System Settings › Privacy & Security ›
Open Anyway does the same thing after the fact). It needs Docker Desktop and
Claude Code on the Mac; the app says which is missing.

Updates: `brew upgrade --cask assay`. The cask is written by `desktop/release.sh`
in the main repository.
