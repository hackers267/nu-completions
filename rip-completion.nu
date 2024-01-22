#  将文件发送到墓地（默认为 /tmp/graveyard-$USER），而不是取消链接。
export extern "rip" [
  --decompose(-d)           #永久删除（取消链接）整个墓地
  --help(-h)                #打印帮助信息
  --inspect(-i)             #在提示操作之前打印有关 TARGET 的一些信息
  --seance(-s)              #打印在当前目录下发送的文件
  --version(-V)             #打印版本信息
  --graveyard:path          #已删除文件进入休息状态的目录
  --unbury(-u):path         #撤消当前用户上次删除的操作，或指定墓地中的一些文件。
]
