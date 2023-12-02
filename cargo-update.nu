# 对已安装的cargo依赖程序进行检查和更新
export extern "cargo install-update" [
  --all(-a)
  # 更新所有的安装包
  --cargo-dir(-c)
  # 指定cargo家目录，默认是`$CARGO_HEMO`或`$HOME/.cargo`
  --root
  # 指定cargo家目录，默认是`$CARGO_HEMO`或`$HOME/.cargo`
  --downdate(-d)
  # 降级软件包以匹配最新的未拉取的注册表版本
  --force(-f)
  # 强制更新
  --git(-g)
  # 更新git包
  --help(-h)
  # 显示帮助
  --allow-no-update(-i)
  # 允许全新安装包
  --jobs(-j): number
  # 限制并发数
  --list(-l)
  # 列出所有包并检查更新，但不执行更新操作
  --quiet(-q)
  # 静默检查并更新
  --install-cargo(-r): string
  # 指定安装需要使用的cargo
  --filter(-s): string
  # 进行过滤
  --temp-dir(-t): string
  # 指定临时目录，默认：`$TEMP/cargo-update`
  --version(-V)
  # 显示版本
]
