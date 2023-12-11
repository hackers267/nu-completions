# 自动清理项目目录，支持:Cargo,Node,Maven,Python等
export extern "main" [
  --ignored-dirs(-I)
  # 忽略的目录
  --quit(-q)
  # 静默模式，不输出内容
  --all(-a)
  # 不用确认，清理所有项目目录
  --follow-symlinks(-L)
  # 遵从符号链接
  --same-filesystem(-s)
  # 将目录遍历限制到根文件系统
  --older(-o): string
  # 只检查n个单位之内修改的文件目录，单位有:m,h,d,w,M,y
  --default(-d)
  # 如果没有输入，默认为yes
  --help(-h)
  # 显示帮助
]
