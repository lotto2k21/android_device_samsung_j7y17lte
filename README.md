# TWRP for the Samsung Galaxy J7 2017

### How to build ###

```bash
# Create dirs
$ mkdir twrp ; cd twrp

# Init repo
$ repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0

# Clone my local repo
$ git clone https://github.com/lotto2k21/android_manifest_samsung_j7y17lte.git -b twrp .repo/local_manifests

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j8

# Build
$ source build/envsetup.sh ; lunch omni_j7y17lte-eng ; mka recoveryimage
```
