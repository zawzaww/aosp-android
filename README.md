# AOSP
# Android Open Source Project
Pure Android Open Source Project (AOSP) SourceCode For building Android OS.

## How To Build Pure AOSP ROM For Your Android Device

To get started with AOSP sources to build ROM, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).

Firstly, you will make sure installed Google's git-repo in your Computer.

If you don't know Setup Environment for AOSP ROM Development,
you will need to read this Documentation...[Building AOSP Guide](https://github.com/nathanchance/Android-Tools/blob/master/Guides/Building_AOSP.txt).


To initialize your local repository using the AOSP trees to build ROM:

    repo init -u https://github.com/zawzaww/AOSP.git -b oreo


Then to downloading the source:

    repo sync


After syncing is done, use these commands to build:

    cd <source-dir>

    . build/envsetup.sh

    lunch <device_name> (OR) lunch

    make -j$(nproc --all)


// ZawZaw @XDA-Developers
