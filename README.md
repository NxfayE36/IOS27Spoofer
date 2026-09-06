# iOS 27 Visual Spoofer

A small rootless jailbreak tweak intended to visually change the iOS version value
shown in Settings > General > About from the real system version to `27`.

## Target
- iPhone 8 Plus (arm64)
- iOS 16.7.16
- Dopamine rootless

## Build
Push this repository to GitHub. Open the Actions tab and run the workflow.
Download the generated `.deb` artifact after a successful build.

## Important
This project is intended as a visual UI modification only. It does not edit
SystemVersion.plist or change the actual firmware version.

If the Settings UI hierarchy differs on a particular iOS build, the About-page
detection may need adjustment.
