def "rg color" [] {
  ["never", "auto", "always", "ansi"]
}

export extern "rg" [
  --glob(-g): string
  # 使用GLOB过滤文件
  --line-number(-n)
  # 显示行号
  --hidden(-.)
  # 搜索隐藏文件
  --iglob: string
  # 使用GLOB过滤文件，包括隐藏文件
  --color: string@"rg color"
  # 使用颜色显示
  --case-sensitive(-s)
  # 大小写敏感
  --column
  # 显示列号
  --context(-C): number
  # 显示指定行数的上下文
  --context-separator: string
  # 指定上下行分隔的分隔符，只有指定`-A`,`-B`和`-C`时有效。
  --count(-c)
  # 统计每个文件中结果出现的次数
]
