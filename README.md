# iOSJenkins
测试 JenKins 自动化部署、持续继承测试项目。<br />
fastlane 自动打包
Jenkins modify


## Couldn't automatically detect the provisioning profile mapping
ERROR [2019-04-09 15:27:06.51]: Since Xcode 9 you need to provide an explicit mapping of what
ERROR [2019-04-09 15:27:06.51]: provisioning profile to use for each target of your app
ERROR [2019-04-09 15:27:06.51]: No such file or directory @ rb_sysopen - /Users/Shared/Jenkins/Desktop/gitDemo/meiYe/Pods/Target Support Files/Pods-meiYe/Pods-meiYe.debug.xcconfig



### 1 Jenkins 运行 `pod install` 脚本提示：Jenkins find_spec_for_exe': can't find gem cocoapods (>= 0.a) with executable pod (Gem::GemNotFoundException)
> Jenkins 全局环境变量： PATH ： /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin，添加就行了
> 确认 Jenkins 服务器是否有 cocoapods ，进入到 Jenkins 拉取代码仓库里安装 pod 试一试。`/Users/Shared/Jenkins/Home/workspace/JenkinsDemo`

- [JianShu Jenkins+cocoapods+Bugly自动打包配置教程](https://www.jianshu.com/p/6ea18e8cc048)
- [Cocoapods 镜像](https://blog.csdn.net/guo405240393/article/details/80319520)


###  Exit status: 1[0m
```
from /usr/local/bin/xcpretty:23:in `<main>'
ERROR [2019-04-09 17:51:31.23]: [31mExit status: 1[0m
ERROR [2019-04-09 17:51:31.23]: [31mYour shell environment is not correctly configured[0m
ERROR [2019-04-09 17:51:31.23]: [31mInstead of UTF-8 your shell uses US-ASCII[0m
ERROR [2019-04-09 17:51:31.23]: [31mPlease add the following to your '~/.bashrc':[0m
ERROR [2019-04-09 17:51:31.23]: 
ERROR [2019-04-09 17:51:31.23]: [31m       export LANG=en_US.UTF-8[0m
ERROR [2019-04-09 17:51:31.23]: [31m       export LANGUAGE=en_US.UTF-8[0m
ERROR [2019-04-09 17:51:31.23]: [31m       export LC_ALL=en_US.UTF-8[0m
ERROR [2019-04-09 17:51:31.23]: 
ERROR [2019-04-09 17:51:31.23]: [31mYou'll have to restart your shell session after updating the file.[0m
ERROR [2019-04-09 17:51:31.23]: [31mIf you are using zshell or another shell, make sure to edit the correct bash file.[0m
ERROR [2019-04-09 17:51:31.23]: [31mFor more information visit this stackoverflow answer:[0m
ERROR [2019-04-09 17:51:31.23]: [31mhttps://stackoverflow.com/a/17031697/445598[0m
```

解决方案：Jenkins - build 添加：

```
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

```