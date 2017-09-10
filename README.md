# AOSP
Pure Android Open Source Project (AOSP) SourceCode For building Android OS

## How To Build Pure AOSP ROM For Your Android Device ##
---------------

To get started with AOSP sources to build ROM, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).

To initialize your local repository using the AOSP trees to build ROM:

    repo init -u https://github.com/zawzaww/AOSP.git -b android-8.0.0_r4

Then to downloading the source:

    repo sync


Then to build,
After syncing is done, use these commands to build:

    cd <source-dir>

    . build/envsetup.sh

    breakfast <device_name> OR lunch <device_name>

    make -j$(nproc --all)


//ZawZaw @XDA-Developers
