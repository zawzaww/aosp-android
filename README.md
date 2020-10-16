# PureAOSP
## Android Platform Manifest for Building Pure Android

[AOSP - Android Open Source Project](https://source.android.com)
- [PureAOSP](https://android.googlesource.com) is a free and Open-source unmodified Android OS also known as Pure Android with Upstream Linux Kernel.
- This repository is aimed for reducing AOSP Source Code's filesize for my personal PureAOSP project.
- Remove unused Android Git repositories. Example: device trees, kernel trees, prebuilts, system packages and etc..
- You can use this PureAOSP manifest repository if you need AOSP Android Platform Sources.

## How To Build Pure Android from Source Code
To get started with PureAOSP sources to build Android system image, you'll need to get
familiar with [Git and Repo](https://source.android.com/setup/build/downloading#installing-repo).

To initialize your local repository using the PureAOSP trees to build Android system image:
```bash
   repo init -u https://github.com/zawzaww/aosp-android.git -b android-11.0.0
```

(OR)

To initialize a shallow clone, which will save even more space, use a command like this:
```bash
   repo init --depth=1 -u https://github.com/zawzaww/aosp-android.git -b android-11.0.0
```

Then to downloading the sources:
```bash
   repo sync
```

 (OR)

Additionally, you can define the number of parallel download repo should do:
- N - the number of parallel downlods
```bash
   repo sync -jN -f --force-sync --no-clone-bundle --no-tags
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

## Explanation 
For make -jN command
- Official AOSP Docs: Build everything with GNU make can handle parallel tasks with a -jN argument and it's common to use a number of tasks N that's between 1 and 2 times the number of hardware threads on the computer being used for the build. For example, on a dual-E5520 machine (2 CPUs, 4 cores per CPU, 2 threads per core), the fastest builds are made with commands between make -j16 and make -j32.

## Blog Post
If you want to know detail about Pure Android OS building for your android device, read more on my [Personal Blog.](https://zawzaww.github.io/blog/android/build-pure-android)

Contributed by: ZawZaw [@XDA-Developers](https://forum.xda-developers.com/member.php?u=7581611)
