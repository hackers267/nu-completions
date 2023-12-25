def format [] {
  ["hurl", "json", "html"]
}

# 格式hurl文件
export extern "main" [
--check                 #在“check”模式下运行
--color                 #为输出着色
--format:string@format  #指定输出格式：hurl、json 或 html（已弃用）[默认：hurl]
--in-place              #就地修改文件
--in:string@format      #指定输入格式：hurl 或 curl [默认：hurl]
--no-color              #不对输出进行着色
--output(-o):string     #写入 FILE 而不是 stdout
--out:string@format     #指定输出格式：hurl、json 或 html [默认：hurl]
--standalone            #独立 Html
--help(-h)              #打印帮助
--version(-V)           #打印版本

]
