# michael_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 安装Flutter SDK (Version V1.12.13)

1. 下载地址macOS Dev：https://flutter.dev/docs/development/tools/sdk/releases?tab=macos
2. 解压拖放到Applications
3. 配置环境PATH: cd ~/.bash_profile; export PATH=$PATH:/Applications/flutter/bin
4. source: ~/.bash_profile
5. flutter --help
6. Xcode
7. flutter doctor 检查环境
8. 第三步添加 https://flutter.dev/community/china
``` 
export PUB_HOSTED_URL=https://pub.flutter-io.cn
 export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

 ```
 ## 新建Flutter项目

 1. run "flutter new michael_flutter"
 2. 查看可用的模拟器： flutter emulator
 3. 启动模拟器： flutter emulator --launch apple_ios_simulator
 4. flutter run

 ```
 flutter run error：resource fork, Finder information, or similar detritus not allowed

 => run "xattr -rc ."

 ```

 ```
 Waiting for another flutter command to release the startup lock
 ```
 => remove flutter/bin/cache/lockfile
 
