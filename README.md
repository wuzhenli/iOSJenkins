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
