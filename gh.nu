def "issue state" [] {
  ["open", "closed", "all"]
}

#*> Issue <*#

# 查看一个仓库中的issue(议题)
export extern "gh issue list"  [
  --assignee(-a): string
  # 根据分配者过滤
  --author(-A): string
  # 根据作者过滤
  --jq(-q): string
  # 使用jq表达式过滤输出
  --json: string
  # 根据字段输出内容
  --label(-l): string
  # 根据label过滤
  --limit(-L): number
  # 最多拉取的数量，默认值为30
  --state(-s): string@"issue state"
  # 根据状态过滤,默认为"open"
  --web(-w)
  # 使用浏览器查看issue
  --search(-S): string
  # 使用查询过滤
  --milestone(-m): string
  # 使用里程碑过滤
]

# 查看仓库中issue(议题)的状态
export extern "gh issue status" [] 

# 关闭指定的issue(议题)
export extern "gh issue close" []

# 重开指定的issue(议题)
export extern "gh issue reopen" []

# 查看指定的issue(议题)
export extern "gh issue view" [
  --comments(-c)
  # 查看评论
  --help
  # 显示帮助
]

# 为指定的issue(议题)添加评论
export extern "gh issue comment" []

# 删除指定的issue(议题)
export extern "gh issue delete" []

# 锁定指定的issue(议题)
export extern "gh issue lock" []

# 解锁指定的issue(议题)
export extern "gh issue unlock" []

# 创建issue(议题)
export extern "gh issue create" []

# 管理和指定issue(议题)相关的分支
export extern "gh issue develop" []

# 编辑指定的issue(议题)
export extern "gh issue edit" []

# 置顶指定的issue(议题)
export extern "gh issue pin" []

# 取消指定的issue(议题)的置顶
export extern "gh issue unpin" []

# 转移指定的issue(主题)到其它仓库
export extern "gh issue transfer" []

