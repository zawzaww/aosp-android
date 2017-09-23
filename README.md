# AOSP
# Android Open Source Project
My Personal Android Open Source Project (AOSP) SourceCode For building Custom Pure Android OS.

- I aimed for reduce sorucecode filesize for my personal AOSP ROM builds
- Removed unnecessary project paths, device trees, kernel trees and etc...
- If you don't have good internet connection, you can use this my personal Repo



## How To Build Pure AOSP ROM For Your Android Device

To get started with AOSP sources to build ROM, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).


To initialize your local repository using the AOSP trees to build ROM:

    repo init -u https://github.com/zawzaww/PureAndroidOS.git -b oreo


Then to downloading the source:

    repo sync


After syncing is done, use these commands to build:

    cd <source-dir>

    . build/envsetup.sh

    lunch <device_name> (OR) lunch

    make -j$(nproc --all)

<center><img src="http://androiddeveloper.galileo.edu/wp-content/uploads/2017/04/android-open-source-project-e1493408015792.png" height="54%" width="54%;"/></center>

// ZawZaw @XDA-Developers
