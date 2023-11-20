export extern "hx" [
--help(-h)
#打印帮助信息

--tutor
#加载tutorial

--health
#Checks for potential errors in editor setup CATEGORY can be a language or one of 'clipboard', 'languages' or 'all'. 'all' is the default if not specified.

--grammar(-h)
#Fetches or builds tree-sitter grammars listed in languages.toml

--config(-c)
#使用指定的配置文件

-v
#Increases logging verbosity each use for up to 3 times

--log
#指定日志文件 (默认文件: /home/silence/.cache/helix/helix.log)

--version(-V)
#输出版本信息

--vsplit
# 垂直分割给定的文件

--hsplit
# 水平分割给定的文件
]
export extern "helix" [
--help(-h)
#打印帮助信息

--tutor
#加载tutorial

--health
#Checks for potential errors in editor setup CATEGORY can be a language or one of 'clipboard', 'languages' or 'all'. 'all' is the default if not specified.

--grammar(-h)
#Fetches or builds tree-sitter grammars listed in languages.toml

--config(-c)
#使用指定的配置文件

-v
#Increases logging verbosity each use for up to 3 times

--log
#指定日志文件 (默认文件: /home/silence/.cache/helix/helix.log)

--version(-V)
#输出版本信息

--vsplit
# 垂直分割给定的文件

--hsplit
# 水平分割给定的文件
]
