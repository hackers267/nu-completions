export extern "main" [
--help
#打印帮助信息

--version
#打印版本

--prefs
#打印 prefs 文件的路径，如果不存在则创建它

--summary(-s)
#以摘要模式启动

--no-summary(-S)
#以完整模式启动（不是摘要）

--wrap(-w)
#从换行开始

--no-wrap(-W)
#从未换行的行开始

--reverse
#从 gui 垂直顺序反转开始

--no-reverse
#从标准 GUI 顺序开始（重点关注顶部）

--list-jobs(-l)
#列出可用的job

--offline
#Don't access the network (jobs may use it, though)
#以离线模式运行（但工作可能会使用它）

--init
#创建 bacon.toml 文件，准备进行自定义

--job(-j):number
#指定运行时job的值，例如 check 、 Clippy 、定制作业，...

--no-default-features
#忽略默认的features

--features:string
#逗号分隔的功能列表，要求Cargo进行编译

--all-features
#激活所有可用功能

--export-locations(-e)
#导出 .bacon-locations 文件中的位置

--no-export-locations
#不导出位置

--path(-E):string
#监听路径（必须是 Rust 目录或内部）

]
