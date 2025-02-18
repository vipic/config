# macOS config and applications as code

通过执行脚本批量完成系统的设置的更改，应用程序的安装等。

适用于初始化电脑，或者多个电脑统一配置。不用去 UI 设置页面挨个查找并设置。应用程序也不用依次下载安装。

### 如何改变系统配置

macOS 提供了一个 `defaults` 的命令可以查询和配置各个系统参数，包括但不限于 Dock、触发角、系统偏好等等。

执行 `defaults` 命令后瞬间完成配置，不用去 System Settings 依次去找各个要设置的点并修改。

### 如何安装软件

安装软件主要依赖 `brew` ，通过 `brew` 安装非 App Store 的软件。并且 `brew` 安装一个叫做 `mas` 的命令行软件，可以安装和更新 App Store 的软件。

### 重要

受限于 GFW ，部分用户执行这些脚本前先解决好网络问题，否则 `brew` 安装都是问题。


### 开始执行

依次执行各个项目的安装和配置，下面是各个项目的说明

1. `defaults_config.sh` 修改 Mac 系统设置，和个人使用习惯相关，包括简单密码、Finder 设置等
2. `brew.sh` 安装 Homebrew，然后安装一些常用的软件
3. `mas.sh` 在 2 的基础上使用 `mas` 安装一些 App Store 的软件(需要提前登录 App Store)
4. `defaults_dock.sh` 修改 Dock 设置，包括 Dock 的位置、触发角、常驻应用等(常驻应用需要 2 和 3 安装完成)

```shell
sh init.sh
```

### 其他

该仓库也有 `just` 文件，它也可以执行上述命令，但是 `just` 原本使用场景就是将本项目的一些常用脚本统一提取和展示，类似前端开发 `package.json` 中的 `scripts` 一样，不同的是 `just` 是一个专用语言，不限制项目的开发语言。

目前 `.justfile` 中有一些简单的系统文件备份追加等命令，可以不用关心