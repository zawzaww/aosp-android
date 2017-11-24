<img src="http://blog.junipersys.com/wp-content/uploads/2017/08/Android-Open-Source-Project.jpg" height="100%" width="100%;"/>

# AOSP
# Android Open Source Project

My Personal Android Open Source Project (AOSP) SourceCode For building Custom Pure Android OS

- I aimed for reducing Android SourceCode's fileszie for my personal AOSP Projects.
- Removed unnecessary android repos - device trees, kernel prebuilts, system packages and more...
- If you need Pure AOSP Sources, you can use this my personal GitHub Repo.


## How To Build Pure AOSP ROM For Your Android Device

To get started with AOSP sources to build ROM, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).


To initialize your local repository using the AOSP trees to build ROM:

    repo init -u https://github.com/zawzaww/aosp-android-manifest.git -b android-8.0.0

To initialize a shallow clone, which will save even more space, use a command like this:

    repo init --depth=1 -u https://github.com/zawzaww/aosp-android-manifest.git -b android-8.0.0


Then to downloading the source:
```bash
repo sync
```
 (OR)
```bash
repo sync -j$(nproc --all)
```
 (OR)
```bash
repo sync --force-sync
```

After syncing is done, use these commands to build:
```bash
cd <source-dir>

. build/envsetup.sh

lunch <device_name>

make -j4 (OR) make -j$(nproc --all)
```   
   
Explanation:
Build everything with make. GNU make can handle parallel tasks with a -jN argument, and it's common to use a number of tasks N that's between 1 and 2 times the number of hardware threads on the computer being used for the build. For example, on a dual-E5520 machine (2 CPUs, 4 cores per CPU, 2 threads per core), the fastest builds are made with commands between make -j16 and make -j32.

<center><img src="http://androiddeveloper.galileo.edu/wp-content/uploads/2017/04/android-open-source-project-e1493408015792.png" height="54%" width="54%;"/></center>

// Maintained by: ZawZaw [@xda-developers](https://forum.xda-developers.com/member.php?u=7581611)
