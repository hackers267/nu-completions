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
export extern "dx translate" [
  --component(-c)          #激活调试模式
  --file(-f): string       #输入文件
  --raw(-r): string        #输入文件
  --output(-o): string     #输出文件，stdout（如果不存在）
  --bin :string            #指定 bin 目标
  --help(-h)               #打印帮助
] 

# 构建、观察和服务 Rust WASM 应用程序及其所有资产
export extern "dx serve" [
  --target(-t): string            #用于驱动捆绑过程的索引 HTML 文件
  --port: number                  #开发服务器默认端口：8080
  --open                          #在默认浏览器中打开应用程序 default: false
  --example: string               #构建一个示例默认值：“”
  --release                       #在发布模式下构建默认值： false
  --verbose                       #输出详情
  --profile: string               #使用自定义配置文件构建
  --platform: string@"platform"   #构建平台：支持Web & Desktop
  --hot-reload                    #使用热重载 rsx 进行构建 默认值： false
  --cross-origin-policy           #将跨域策略设置为同源默认值： false
  --features: string              #要激活的功能列表以空格分隔
  --bin: string                   #指定 bin 目标
  --help(-h)                      #打印帮助
]     

# 为 Dioxus 启动一个新项目
export extern "dx create" [
  --template: string  #模板路径
  --bin: string       #指定 bin 目标
  --help(-h)          #打印帮助
]    

# 干净的输出工件
export extern "dx clean" [
  --bin: string       #指定 bin 目标
  --help(-h)          #打印帮助
]     

# 捆绑 Rust 桌面应用程序及其所有资产
export extern "dx bundle" [
  --package: string              #指定包
  --release                      #在发布模式下构建
  --verbose                      #输出详情
  --example: string              #构建一个示例
  --profile: string              #使用自定义配置文件构建
  --platform: string@"platform"  #构建平台：支持Web & Desktop
  --features: string             #要激活的功能列表以空格分隔
  --bin: string                  #指定 bin 目标
  --help(-h)                     #打印帮助
]    

# 打印此扩展的版本
export extern "dx version" [
  --bin: string       #指定 bin 目标
  --help(-h)          #打印帮助
]   

# 格式化一些 rsx
export extern "dx fmt" [
  --check(-c)          #在“检查”模式下运行。如果输入格式正确，则以 0 退出。如果需要格式化，则以 1 退出并打印差异
  --raw(-r): string    #输入 rsx（选择）
  --file(-f): string   #输入文件
  --bin: string        #指定 bin 目标
  --help(-h)           #打印帮助
]       

# 检查项目中的 Rust 文件是否有问题
export extern "dx check" [
  --file(-f): string   #输入文件
  --bin: string        #指定 bin 目标
  --help(-h)           #打印帮助
]     

# Dioxus 配置文件控件
export extern "dx config" []    

#为项目/文件夹初始化 `Dioxus.toml`
export extern "dx config init" [
  name: string,
  --force                         #覆盖旧配置
  --platform: string@"platform"   #项目默认平台【默认：web】
  --bin: string                   #指定 bin 目标
  --help(-h)                      #打印帮助
]          

#格式化打印 Dioxus 配置
export extern "dx config format-print" [
  --bin: string        #指定 bin 目标
  --help(-h)           #打印帮助
]  

#创建自定义 html 文件
export extern "dx config custom-html" [
  --bin: string        #指定 bin 目标
  --help(-h)           #打印帮助
]   
