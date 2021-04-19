# Create dirs
$ mkdir shrp ; cd shrp

# Init repo
$ repo init --depth=1 -u git://github.com/SHRP/platform_manifest_twrp_omni.git -b v3_9.0

# Clone my local repo
$ git clone https://github.com/lotto2k21/android_device_samsung_j7y17lte.git -b skyhawk device/samsung/j7y17lte

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j8

# Build
$ mv device/samsung/j7y17lte/build_skyhawk.sh .
$ . build_skyhawk.sh j7y17lte

