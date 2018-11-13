# PureAOSP
## Android Platform Manifest : My Personal Manifest for Building PureAOSP

[AOSP(Android Open Source Project)](https://source.android.com/setup/start/faqs#what-is-the-android-open-source-project)

- What is PureAOSP? [PureAOSP](https://android.googlesource.com) is a free and Open-source unmodified Android OS also known as Pure Android.
- This repository is aimed for reducing AOSP SourceCode's filesize for my personal AOSP projects.
- Removed unnecessary Android Git repositories: device trees, kernel trees, system packages, apps and others.
- Supported OMS/substratum android theme engine.
- You can use this personal AOSP repository if you need AOSP sources.


## How To Build PureAOSP for Android Devices
To get started with AOSP sources to build ROM, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).

If you want to automatic setup environment, run this script [envsetup.sh](https://github.com/zawzaww/aosp-android/blob/android-8.1.0/envsetup/envsetup.sh).

To initialize your local repository using the AOSP trees to build ROM:
```bash
   repo init -u https://github.com/zawzaww/aosp-android.git -b android-8.1.0
```

(OR)

To initialize a shallow clone, which will save even more space, use a command like this:
```bash
   repo init --depth=1 -u https://github.com/zawzaww/aosp-android.git -b android-8.1.0
```

Then to downloading the sources:
```bash
   repo sync
```

 (OR)

Additionally, you can define the number of parallel download repo should do:
- X - the number of parallel downlods
```bash
   repo sync -jX -f --force-sync --no-clone-bundle --no-tags
```
You can type this:
```bash
   repo sync  -f --force-sync --no-clone-bundle --no-tags -j$(nproc --all)
```

After syncing is done, use these commands to build:
```bash
cd <source-dir>

. build/envsetup.sh

lunch <device_name>

make -j4 (OR) make -j$(nproc --all)
```   
   
### Explanation:
Build everything with make. GNU make can handle parallel tasks with a -jN argument, and it's common to use a number of tasks N that's between 1 and 2 times the number of hardware threads on the computer being used for the build. For example, on a dual-E5520 machine (2 CPUs, 4 cores per CPU, 2 threads per core), the fastest builds are made with commands between make -j16 and make -j32.

If you want to know detail about Custom Android OS building for your android device, read more on my [Personal Blog.](https://medium.com/zawzaww/how-to-build-custom-android-os-for-android-devices-cf4bba4bb3a5)

Contributed by: ZawZaw [@XDA-Developers](https://forum.xda-developers.com/member.php?u=7581611)
