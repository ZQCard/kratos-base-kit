# kratos-base-kit(kbk)
本项目基于go-kratos作为后端框架，vue-element-admin作为[管理后台模板](https://github.com/ZQCard/kbk-frontend)，开发通用基础服务，并带有kbk-layout作为后台快速[开发模板](https://github.com/ZQCard/kbk-layout),方便快速启用服务,每个服务均可单独运行。
[预览地址](http://kbk.manli.ltd)

## 项目目录

[项目目录介绍](https://go-kratos.dev/blog/go-project-layout/)。


```
├── kbk-bff-admin // 管理后台bff层服务
├── kbk-user // 用户服务
├── kbk-administrator // 管理员服务
├── kbk-authorization // 权限服务
├── kbk-file // 文件服务
├── kbk-log // 接口日志服务
├── kbk-notice // 通知服务
├── kbk-ai // chatgpt对话服务
├── kbk-frontend // 管理后台前端代码 vue-element-admin为模板
├── kbk-layout // kratos项目模板，用于快速启动项目

```

## 服务组件

- [x] 服务注册与发现： ETCD
- [x] 链路追踪：jaeger
- [x] 数据库：mysql
- [x] 缓存：redis

## 其他
a.initSql为项目初始化sql以及数据

b.每个项目均需要单独启动
```
kratos run
```
c.默认本地开发文件为configs/config-dev.yaml， 可自行更改

* 有任何建议，请扫码添加我微信进行交流。

![扫码提建议](https://kratos-base-kit.oss-cn-shanghai.aliyuncs.com/card.png)
