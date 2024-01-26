def "service" [] {
  
}
def "user" [] {
  
}
def "uid" [] {
  
}
def "context" [] {
  
}
def "zone" [] {}
def "policy" [] {}
def "ipset" [] {}
def "icmptype" [] {}
def "ipv" [] {}
def "protocol" [] {}
export extern "firewall-cmd" [
--help(-h)                                                    #打印简短的帮助文本并退出
--version(-V)                                                 #打印firewalld的版本字符串
--quiet(-q)                                                   #不打印状态消息
--state                                                       #返回并打印firewalld状态
--reload                                                      #重新加载防火墙并保留状态信息
--complete-reload                                             #重新加载防火墙并丢失状态信息
--runtime-to-permanent                                        #从运行时配置创建永久
--reset-to-defaults                                           #将配置重置为firewalld的默认配置
--check-config                                                #检查永久配置是否有错误
--get-log-denied                                              #打印日志拒绝值
--set-log-denied: string                                      #设置日志拒绝值
--permanent                                                   #永久设置选项 可用于标有 [P] 的选项
--get-default-zone                                            #打印连接和接口的默认区域
--set-default-zone: string@"zone"                             #设置默认区域
--get-active-zones                                            #打印当前活动区域
--get-zones                                                   #打印预定义区域 [P]
--get-services                                                #打印预定义服务 [P]
--get-icmptypes                                               #打印预定义的 icmptypes [P]
--get-zone-of-interface: string                               #接口绑定到的区域的打印名称 [P]
--get-zone-of-source                                          #源绑定到的区域的打印名称 [P]
--list-all-zones                                              #列出为所有区域添加或启用的所有内容 [P]
--new-zone: string@"zone"                                     #添加新区域 [仅限 P]
--new-zone-from-file                                          #从具有可选名称的文件添加新区域 [仅限 P]
--delete-zone: string@"zone"                                  #删除现有区域 [仅限 P]
--load-zone-defaults                                          #加载区域默认设置 [仅限 P]
--zone: string@"zone"                                         #使用此区域设置或查询选项，否则为默认区域 可用于标记为 [Z] 的选项
--info-zone: string@"zone"                                    #打印有关区域的信息
--path-zone: string@"zone"                                    #区域的打印文件路径[仅限P]
--get-policies                                                #打印预定义策略
--get-active-policies                                         #打印当前有效的政策
--list-all-policies                                           #列出为所有策略添加或启用的所有内容
--new-policy: string@"policy"                                 #添加新的空策略
--new-policy-from-file: path                                  #从具有可选名称覆盖的文件添加新策略 [仅限 P]
--delete-policy: string@"policy"                              #删除现有策略
--load-policy-defaults: string@"policy"                       #加载策略默认设置
--policy: string@"policy"                                     #使用此策略设置或查询选项 可用于标记为 [O] 的选项
--info-policy: string@"policy"                                #打印有关策略的信息
--path-policy: string@"policy"                                #打印策略的文件路径
--get-ipset-types                                             #打印支持的 ipset 类型

--new-ipset                                                   #添加新的 ipset [仅限 P]
--new-ipset-from-file: path                                   #从具有可选名称的文件中添加新的 ipset [仅限 P]

--delete-ipset: string@"ipset"                                #删除现有的 ipset [仅限 P]

--load-ipset-defaults: string@"ipset"                         #加载 ipset 默认设置 [仅限 P]

--info-ipset: string@"ipset"                                  #打印有关 ipset 的信息
--path-ipset: string@"ipset"                                  #打印 ipset 的文件路径

--get-ipsets                                                  #打印预定义的 ipsets
--set-description: string                                     #将新描述设置为 ipset [仅限 P]

--get-description                                             #打印 ipset 的描述 [仅限 P]

--set-short: string                                           #将新的简短描述设置为 ipset [仅限 P]
--get-short                                                   #打印 ipset 的简短描述 [仅限 P]

--add-entry:string                                            #向 ipset 添加新条目 [P]

--remove-entry:string                                         #从 ipset 中删除条目 [P]
--query-entry:string                                          #返回ipset是否有条目[P]
--get-entries                                                 #列出 ipset 的条目 [P]
--add-entries-from-file:string                                #将新条目添加到 ipset [P]
--remove-entries-from-file:string                             #从 ipset 中删除条目 [P]
--new-icmptype: string@"icmptype"                             #添加新的 icmptype [仅限 P]
--new-icmptype-from-file: path                                #从具有可选名称的文件中添加新的 icmptype [仅限 P]
--delete-icmptype: string@"icmptype"                          #删除现有的 icmptype [仅限 P]
--load-icmptype-defaults: string@"icmptype"                   #加载 icmptype 默认设置 [仅限 P]
--info-icmptype: string@"icmptype"                            #打印有关 icmptype 的信息
--path-icmptype: string@"icmptype"                            #打印 icmptype 的文件路径 [仅限 P]
--set-description: string                                     #将新描述设置为 icmptype [仅限 P]
--get-description                                             #打印 icmptype 的描述 [仅限 P]
--set-short: string                                           #将新的简短描述设置为 icmptype [仅限 P]
--get-short                                                   #打印 icmptype 的简短描述 [仅限 P]
--add-destination :string@"ipv"                               #在 icmptype 中启用 ipv 的目标 [仅限 P]
--remove-destination :string@"ipv"                            #在 icmptype 中禁用 ipv 的目标 [仅限 P]
--query-destination :string@"ipv"                             #返回 icmptype 中是否启用目标 ipv [仅限 P]
--get-destinations                                            #列出 icmptype 中的目的地 [仅限 P]
--new-service: string@"service"                               #添加新服务 [仅限 P]
--new-service-from-file: path                                 #从具有可选名称的文件添加新服务 [仅限 P]
--delete-service: string@"service"                            #删除现有服务 [仅限 P]
--load-service-defaults: string@"service"                     #加载 icmptype 默认设置 [仅限 P]
--info-service: string@"service"                              #打印有关服务的信息
--path-service: string@"service"                              #服务的打印文件路径[仅限P]
--set-description: string                                     #为服务设置新描述 [仅限 P]
--get-description                                             #打印服务说明 [仅限 P]
--set-short: string                                           #设置新的服务简短描述 [仅限 P]
--get-short                                                   #打印服务的简短描述 [仅限 P]
--add-port :string                                            #添加新端口到服务 [仅限 P]
--remove-port :string                                         #从服务中删除端口 [仅限 P]
--query-port :string                                          #返回端口是否已添加用于服务[仅限P]
--get-ports                                                   #列出服务端口 [仅限 P]
--add-protocol: string@"protocol"                             #向服务添加新协议 [仅限 P]
--remove-protocol: string@"protocol"                          #从服务中删除协议 [仅限 P]
--query-protocol: string@"protocol"                           #返回服务是否已添加协议[仅限P]
--get-protocols                                               #列出服务协议 [仅限 P]
--add-source-port :string                                     #添加新的源端口到服务 [仅限 P]
--remove-source-port :string                                  #从服务中删除源端口 [仅限 P]
--query-source-port :string                                   #返回源端口是否已添加服务[仅限P]
--get-source-ports                                            #列出服务的源端口 [仅限 P]
--add-helper: string                                          #添加新的助手到服务 [仅限 P]
--remove-helper: string                                       #从服务中删除助手 [仅限 P]
--query-helper: string                                        #返回helper是否已添加用于服务[仅限P]
--get-service-helpers                                         #列出服务助手 [仅 P]
--set-destination :string@"ipv"                               #将 ipv 的目标设置为服务中的地址 [仅限 P]
--remove-destination :string@"ipv"                            #禁用 ipv i 服务的目标 [仅限 P]
--query-destination :string@"ipv"                             #返回是否为服务设置了目标ipv [仅限P]
--get-destinations                                            #列出服务中的目的地 [仅限 P]
--add-include: string@"service"                               #添加新的包含到服务 [仅限 P]
--remove-include: string@"service"                            #从服务中删除包含内容 [仅限 P]
--query-include: string@"service"                             #返回是否已为服务添加包含[仅限P]
--get-includes                                                #服务列表 [仅限 P]
--list-all                                                    #列出为 [P] [Z] [O] 添加或启用的所有内容
--timeout: string                                             #启用 timeval 时间选项，其中 timeval 是
--set-description: string                                     #设置新描述 [仅限 P] [Z] [O]
--get-description                                             #打印说明 [仅限 P] [Z] [O]
--get-target                                                  #获取目标[仅限P][Z][O]
--set-target: string                                          #设置目标 [仅限 P] [Z] [O]
--set-short: string                                           #设置新的简短描述 [Z] [O]
--get-short                                                   #打印简短说明 [仅限 P] [Z] [O]
--list-services                                               #列出已添加的服务 [P] [Z]
--add-service: string@"service"                               #添加服务 [P] [Z] [O] [T]
--remove-service: string@"service"                            #删除服务 [P] [Z] [O]
--query-service: string@"service"                             #返回服务是否已添加 [P] [Z] [O]
--list-ports                                                  #列出已添加的端口 [P] [Z] [O]
--add-port :string                                            #添加端口 [P] [Z] [O] [T]
--remove-port :string                                         #拆下端口 [P] [Z] [O]
--query-port :string                                          #返回端口是否已添加 [P] [Z] [O]
--list-protocols                                              #列出添加的协议 [P] [Z] [O]
--add-protocol: string@"protocol"                             #添加协议 [P] [Z] [O] [T]
--remove-protocol: string@"protocol"                          #删除协议 [P] [Z] [O]
--query-protocol: string@"protocol"                           #返回协议是否已添加 [P] [Z] [O]
--list-source-ports                                           #列出添加的源端口 [P] [Z] [O]
--add-source-port :string                                     #添加源端口 [P] [Z] [O] [T]
--remove-source-port :string                                  #删除源端口 [P] [Z] [O]
--query-source-port :string                                   #返回源端口是否已添加 [P] [Z] [O]
--list-icmp-blocks                                            #列出已添加的 Internet ICMP 类型块 [P] [Z] [O]
--add-icmp-block: string@"icmptype"                           #添加 ICMP 块 [P] [Z] [O] [T]
--remove-icmp-block: string@"icmptype"                        #删除 ICMP 块 [P] [Z] [O]
--query-icmp-block: string@"icmptype"                         #返回是否已添加 ICMP 块 [P] [Z] [O]
--list-forward-ports                                          #列出添加的 IPv4 转发端口 [P] [Z] [O]
--add-forward-port                                            #添加 IPv4 转发端口 [P] [Z] [O] [T]
--remove-forward-port                                         #删除 IPv4 转发端口 [P] [Z] [O]
--query-forward-port                                          #返回IPv4转发端口是否已添加 [P] [Z] [O]
--add-masquerade                                              #启用 IPv4 伪装 [P] [Z] [O] [T]
--remove-masquerade                                           #禁用 IPv4 伪装 [P] [Z] [O]
--query-masquerade                                            #返回 IPv4 伪装是否已启用 [P] [Z] [O]
--list-rich-rules                                             #添加了丰富的语言规则列表 [P] [Z] [O]
--add-rich-rule: string                                       #添加丰富的语言规则'rule' [P] [Z] [O] [T]
--remove-rich-rule: string                                    #删除丰富语言规则“规则”[P] [Z] [O]
--query-rich-rule: string                                     #返回是否添加了丰富语言规则'rule' [P] [Z] [O]
--add-icmp-block-inversion                                    #启用区域的 icmp 块反转 [P] [Z]
--remove-icmp-block-inversion                                 #禁用区域的 icmp 块反转 [P] [Z]
--query-icmp-block-inversion                                  #返回是否已为区域启用 icmp 块反转 [P] [Z]
--add-forward                                                 #启用区域中接口和源之间的数据包转发 [P] [Z] [T]
--remove-forward                                              #禁用区域中接口和源之间的数据包转发 [P] [Z]
--query-forward                                               #返回接口之间的数据包转发是否可以锁定。
--lockdown-off                                                #禁用锁定。
--query-lockdown                                              #查询是否启用锁定
--list-lockdown-whitelist-commands                            #列出白名单中的所有命令行 [P]
--add-lockdown-whitelist-command: string                      #将命令添加到白名单[P]
--remove-lockdown-whitelist-command: string                   #从白名单中删除该命令 [P]
--query-lockdown-whitelist-command: string                    #查询命令是否在白名单中[P]
--list-lockdown-whitelist-contexts                            #列出白名单上的所有上下文 [P]
--add-lockdown-whitelist-context: string@"context"            #将context上下文添加到白名单中[P]
--remove-lockdown-whitelist-context: string@"context"         #从白名单中删除上下文 [P]
--query-lockdown-whitelist-context: string@"context"          #查询上下文是否在白名单中[P]
--list-lockdown-whitelist-uids                                #列出白名单中的所有用户 ID [P]
--add-lockdown-whitelist-uid: string@"uid"                    #将用户id uid添加到白名单[P]
--remove-lockdown-whitelist-uid: string@"uid"                 #将用户id uid从白名单中删除[P]
--query-lockdown-whitelist-uid: string@"uid"                  #查询用户id uid是否在白名单中[P]
--list-lockdown-whitelist-users                               #列出白名单中的所有用户名 [P]
--add-lockdown-whitelist-user: string@"user"                  #将用户名user添加到白名单[P]
--remove-lockdown-whitelist-user: string@"user"               #将用户名user从白名单中删除[P]
--query-lockdown-whitelist-user: string@"user"                #查询用户名user是否在白名单中[P]
--panic-on                                                    #启用紧急模式
--panic-off                                                   #禁用紧急模式
--query-panic                                                 #查询panic模式是否开启
]
