# magisk_template_for_zygisk
基于Zygisk的Magisk模块模板

## 使用

1. `git clone --recursive https://github.com/nicai4/magisk_template_for_zygisk.git`
2. 配置好ndk环境
3. 使用`Android Studio`打开`zygisk-module-sample`文件夹,进行zygisk模块的编写
4. 切换到根目录，执行`sh build.sh`
5. 切换到`out`目录将zip文件`push`到装有Magisk/KernelSU/Apatch的手机上，进行刷入；
6. enjoy it！