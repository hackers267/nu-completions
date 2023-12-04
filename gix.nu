# 创建 工作树档案 的子命令
export extern "gix archive" []
# 和提交图交互的子命令
export extern "gix commit-graph" []
# 与 object 数据交互
export extern "gix odb" []
# 与 tree 数据交互
export extern "gix tree" []
# 与 提交 数据交互
export extern "gix commit" []
# 验证完整性
export extern "gix verify" []
# 查询并获取修订信息
export extern "gix revision" []
# 一个和 git credential 相似的程序
export extern "gix credential" []
# 从远程获取并存放数据
export extern "gix fetch" []
# Clone
export extern "gix clone" []
# 和 mailmap 交互
export extern "gix mailmap" []
# 和 remote 交互
export extern "gix remote" []
# 和attribute 文件交互
export extern "gix attribues" []
# 和 exclude 文件交互
export extern "gix exclude" []
# 和 index 交互
export extern "gix index" []
# 和 submodule 交互
export extern "gix submodule" []
# Show which git configuration values are used or planned
export extern "gix config-tree" []
# 显示状态
export extern "gix status" []
# 显示正在应用的配置(全局和本地)
export extern "gix config" []
# run algorithms on a corpus of git repo and store their results
# for later analysis
export extern "gix corpus" []
# Subcommands that need no git repo to run
export extern "gix free" []
# Generate shell completions
export extern "gix completions" []
# Show this help
export extern "gix help" []

