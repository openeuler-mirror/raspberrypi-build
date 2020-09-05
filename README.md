# raspberrypi-build

#### 介绍

构建树莓派镜像的脚本程序。

#### 软件架构

AArch64

#### 安装教程

有两种方式获取该脚本：

1.  下载该仓库源码。
2.  基于 openEuler 20.09 的源仓库，使用 `rpm` 或 `dnf` 软件包管理命令安装 raspberrypi-build。

    `dnf install raspberrypi-build`

    安装 raspberrypi-build 后，树莓派镜像构建的脚本及相关文件会保存在 `/opt/raspberrypi-build`。

#### 使用说明

构建镜像需执行命令：

`sudo bash build-image.sh -d DIR -r REPO -n IMAGE_NAME`

各个参数意义：

1.  -d, --dir DIR

    构建镜像和临时文件的输出目录，默认为脚本所在目录。如果 `DIR` 不存在则会自动创建。
    
    脚本运行结束后，会提示镜像的存储位置，默认保存在 `DIR/raspi_output/img/` 下。

2.  -r, --repo REPO_INFO

    必要参数！开发源 repo 文件的 URL 或者路径，也可以是开发源中资源库的 baseurl 列表。注意，如果该参数为资源库的 baseurl 列表，该参数需要使用双引号，各个 baseurl 之间以空格隔开。
    
    下面分别举例：
    - 开发源 repo 文件的 URL：*暂无*
    - 开发源的 repo 文件路径：`./openEuler-20.09.repo`

        该文件的内容如下：
        ```
        [MAINLINE]
        name=MAINLINE
        baseurl=http://119.3.219.20:82/openEuler:/Mainline/standard_aarch64/
        enabled=1
        gpgcheck=0

        [EPOL]
        name=EPOL
        baseurl=http://119.3.219.20:82/openEuler:/Epol/standard_aarch64/
        enabled=1
        gpgcheck=0
        ```
    - 资源库的 baseurl 列表：`"http://119.3.219.20:82/openEuler:/Mainline/standard_aarch64/ http://119.3.219.20:82/openEuler:/Epol/standard_aarch64/"`

3.  -n, --name IMAGE_NAME
    
    构建的镜像名称。
    
    例如，`openEuler-20.09.img`。默认为`openEuler-aarch64-raspi.img`，或者根据 `-r, --repo REPO_INFO` 参数自动生成。

4.  -h, --help
    
    显示帮助信息。

#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


#### 码云特技

1.  使用 Readme\_XXX.md 来支持不同的语言，例如 Readme\_en.md, Readme\_zh.md
2.  码云官方博客 [blog.gitee.com](https://blog.gitee.com)
3.  你可以 [https://gitee.com/explore](https://gitee.com/explore) 这个地址来了解码云上的优秀开源项目
4.  [GVP](https://gitee.com/gvp) 全称是码云最有价值开源项目，是码云综合评定出的优秀开源项目
5.  码云官方提供的使用手册 [https://gitee.com/help](https://gitee.com/help)
6.  码云封面人物是一档用来展示码云会员风采的栏目 [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)
