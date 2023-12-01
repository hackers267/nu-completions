def "nextest targets" [type: string] {
  ^cargo metadata --format-version=1 --offline --no-deps | from json | get packages.targets | flatten | where ($type in $it.kind) | get name
}

def "nextest bins" [] { nextest targets bin }

def "nextest examples" [] { nextest targets example }

def "nextest color when" [] {
  ["auto", "always", "never"]
}

def "nextest profile" [] {
  open Cargo.toml | get profile | transpose | get column0
}

def "nextest package" [] {
  let metadata = (^cargo metadata --format-version=1 --offline --no-deps)
  if $metadata == '' {
    []
  } else {
    $metadata | from json | get workspace_members | split column ' ' | get column1
  }
}

# TODO:定义exclude
def "nextest exclude" [] {
  []
}

def "nextest test" [] { nextest targets test }

def "nextest bench" [] { nextest targets bench }

def "nextest features" [] {
  open Cargo.toml | get features | transpose | get column0
}

# Cargo nextest列出工作空间中的测试
export extern "cargo nextest list" []

# Cargo nextest 构建并运行测试
export extern "cargo nextest run" [
  --profile(-P): string@"nextest profile"
  # Nextest 使用的profile级别
  --verbose(-v)
  # 详情输出
  --color: string@"nextest color when"
  # 使用颜色输出，默认为"auto"
  --help(-h)
  # 输出帮助
  --package(-p): string@"nextest package"
  # 需要测试的package
  --workspace
  # 测试工作空间内的所有package
  --exclude: string@"nextest exclude"
  # 从测试中排除指定的package
  --lib
  # 仅仅执行库的单元测试
  --bin: string@"nextest bins"
  # 仅仅执行指定的执行程序的测试
  --example: string@"nextest examples"
  # 仅仅执行指定的示例测试
  --exmaples
  # 仅仅执行所有的示例测试
  --test: string@"nextest test"
  # 仅仅执行指定的target测试
  --tests
  # 运行所有target测试
  --bench: string@"nextest bench"
  # 仅仅执行指定的基准测试
  --benches
  # 仅仅执行所有的基准测试
  --all-targets
  # 执行所有的target测试
  --features(-F): string@"nextest features"
  # 执行指定的特性测试
  --all-features
  # 执行所有的特性测试
  --no-default-features
  # 不激活`default`特性
  --build-jobs: number
  # 同时运行的线程数
  --release(-r)
  # 使用发布模式构建
  --cargo-profile: string
  # 使用指定的cargo profile构建
]


# Cargo nextest 构建并打包测试
export extern "cargo nextest archive" []

# 显示当前工作空间的Cargo nextest 配置信息
export extern "cargo nextest show-config" []

# 管理 Cargo nextest 自身的安装
export extern "cargo nextest self" []

# 打印帮助信息
export extern "cargo hextest help" []
