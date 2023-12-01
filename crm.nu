# 获取当前所使用的镜像
export extern "crm current" []
# 恢复为官方默认镜像
export extern "crm default" []
# 使用官方镜像执行 "cargo install"
export extern "crm install" []
# 从镜像配置文件中获取镜像列表
export extern "crm list" []
# 使用官方镜像执行 "cargo publish"
export extern "crm publish" []
# 在镜像配置文件中删除镜像
export extern "crm remove" []
# 在镜像配置文件中添加/更新镜像
export extern "crm save" []
# 下载测试包以评估网络延迟
export extern "crm test" []
# 使用官方镜像执行 "cargo update"
export extern "crm update" []
# 切换为要使用的镜像
export extern "crm use" []
# 查看当前版本
export extern "crm version" []
# 检测版本更新
export extern "crm check-update" []
# 评估网络延迟并自动切换到最优的镜像
export extern "crm best" []
# 仅评估 git 镜像源
export extern "crm best git" []
# 仅评估支持 sparse 协议的镜像源
export extern "crm best sparse" []
# 仅评估能够快捷下载软件包的 git 镜像源(推荐使用)
export extern "crm best git-download" []
# 仅评估能够快捷下载软件包日支持 sparse 协议的镜像源(推荐使用)
export extern "crm best sparse-download" []
