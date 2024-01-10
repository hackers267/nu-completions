# 添加系统用户
export extern "useradd" [
  --badname                     #不检查 bad names
  --base-dir(-b): string        #新账户的主目录的基目录
  --btrfs-subvolume-home        #use BTRFS subvolume for home directory
  --comment(-c): string         #新账户的GECOS 字段
  --home-dir(-d): string        #新账户的主目录
  --defaults(-D)                #显示或更改默认的 useradd 配置
  --expiredate(-e): string      #新账户的过期日期
  --inactive(-f): string        #新账户的密码不活动期
  --add-subids-for-system(-F)   #add entries to sub[ud]id even when adding a system user
  --gid(-g): string             #新账户主组的名称或 ID
  --groups(-G): string          #新账户的附加组列表
  --help(-h)                    #显示此帮助信息并退出
  --skel(-k): string            #使用此目录作为骨架目录
  --key(-K): string             #不使用 /etc/login.defs 中的默认值
  --create-home(-m)             #创建用户的主目录
  --no-create-home(-M)          #不创建用户的主目录
  --no-user-group(-N)           #不创建同名的组
  --non-unique(-o)              #允许使用重复的 UID 创建用户
  --password(-p): string        #加密后的新账户密码
  --system(-r)                  #创建一个系统账户
  --root(-R): string            #chroot 到的目录
  --prefix(-P): string          #prefix directory where are located the /etc/* files
  --shell(-s): string           #新账户的登录 shell
  --uid(-u): string             #新账户的用户 ID
  --user-group(-U)              #创建与用户同名的组
]
