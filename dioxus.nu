# 构建、捆绑和发布 Dioxus 应用程序
export extern dx [
  --bin:string     #指定 bin 目标
  --help(-h)       #打印帮助
  --version(-V)    #印刷版
]

def platform [] {
  ["web", "desktop"]
}

def features [] {
  ["web", "ssr"]
}

# 构建 Rust WASM 应用程序及其所有资产
export extern "dx build" [
  --target: string             # 用于驱动捆绑过程的索引 HTML 文件 默认值：index.html
  --release                   # 在发布模式下构建 默认值：false
  --verbose                   # 输出详情
  --example: string            # 构建一个示例 默认值：“”
  --profile: string            # 使用自定义配置文件构建
  --platform: string@"platform"  # 构建平台：支持Web & Desktop 默认值：“default_platform”
  --features: string@"features"  # 要激活的功能列表以空格分隔
  --bin:string                # 指定 bin 目标
  --help(-h)                  # 打印帮助
]     

# 将一些源文件翻译成 Dioxus 代码
export extern "dx translate" [] 

# 构建、观察和服务 Rust WASM 应用程序及其所有资产
export extern "dx serve" []     

# 为 Dioxus 启动一个新项目
export extern "dx create" []    

# 干净的输出工件
export extern "dx clean" []     

# 捆绑 Rust 桌面应用程序及其所有资产
export extern "dx bundle" []    

# 打印此扩展的版本
export extern "dx version" []   

# 格式化一些 rsx
export extern "dx fmt" []       

# 检查项目中的 Rust 文件是否有问题
export extern "dx check" []     

# Dioxus 配置文件控件
export extern "dx config" []    

# 打印此消息或给定子命令的帮助
export extern "dx help" []      
