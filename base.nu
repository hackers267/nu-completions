# 获取文件访问控制列表
export extern "getfacl" [
--access(-a)            #仅显示文件访问控制列表
--default(-d)           #仅显示默认访问控制列表
--omit-header(-c)       #不显示注释标题
--all-effective(-e)     #打印所有有效权利
--no-effective(-E)      #打印无有效权限
--skip-base(-s)         #跳过仅包含基本条目的文件
--recursive(-R)         #递归到子目录中
--logical(-L)           #逻辑行走，遵循符号链接
--physical(-P)          #实体行走，不要遵循象征性链接
--tabular(-t)           #使用表格输出格式
--numeric(-n)           #打印数字用户/组标识符
--one-file-system       #跳过不同文件系统上的文件
--absolute-names(-p)    #不要在路径名中去除前导“/”
--version(-v)           #打印版本并退出
--help(-h)              #此帮助文本
]

# 设置文件访问控制列表
export extern "setfacl" [
--modify(-m) :string             #修改文件的当前 ACL
--modify-file(-M) :string@path   #从文件中读取要修改的 ACL 条目
--remove(-x) :string             #从文件的 ACL 中删除条目
--remove-file(-X) :string@path   #读取要从文件中删除的 ACL 条目
--remove-all(-b)                 #删除所有扩展 ACL 条目
--remove-default(-k)             #删除默认 ACL
--set=acl                        #设置文件的 ACL，替换当前 ACL
--set-file=file                  #读取要从文件设置的 ACL 条目
--mask                           #重新计算有效权限掩码
--no-mask(-n)                    #不要重新计算有效权限掩码
--default(-d)                    #操作适用于默认 ACL
--recursive(-R)                  #递归到子目录中
--logical(-L)                    #逻辑行走，遵循符号链接
--physical(-P)                   #实体行走，不要遵循象征性链接
--restore=file                   #恢复 ACL（与“getfacl -R”相反）
--test                           #测试模式（ACL不修改）
--version(-v)                    #打印版本并退出
--help(-h)                       #此帮助文本
]
