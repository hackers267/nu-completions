# 显示此信息
export extern "udisksctl help" [ ]            
# 显示有关对象的信息
export extern "udisksctl info" [
  --object-path(-p)      #对象获取有关信息
  --block-device(-b)     #阻止设备获取有关信息
  --drive(-d)            #开车去获取有关信息
]            
# 显示所有对象的信息
export extern "udisksctl dump" [ ]            
# 显示高层地位
export extern "udisksctl status" [ ]          
# 监控对象的变化
export extern "udisksctl monitor" [ ]         
# 挂载文件系统
export extern "udisksctl mount" [ 
  --object-path(-p)         #要安装的对象
  --block-device(-b)        #要挂载的块设备
  --filesystem-type(-t)     #要使用的文件系统类型
  --options(-o)             #安装选项
  --no-user-interaction     #如果需要，不验证用户身份
]           
# 卸载文件系统
export extern "udisksctl unmount" [ 
  --no-user-interaction     #如果需要，不验证用户身份
  --object-path(-p)         #要卸载的对象
  --block-device(-b)        #要卸载的块设备
  --force(-f)               #强制/延迟卸载
]         
# 解锁加密设备
export extern "udisksctl unlock" [
  --object-path(-p)         #要解锁的对象
  --block-device(-b)        #阻止设备解锁
  --no-user-interaction     #如果需要，不验证用户身份
  --key-file                #用于解锁的密钥文件
  --read-only               #将设备解锁为只读
]          
# 锁定加密设备
export extern "udisksctl lock" [
  --object-path(-p)         #要锁定的对象
  --block-device(-b)        #要锁定的块设备
  --no-user-interaction     #如果需要，不验证用户身份
]            
# 设置循环设备
export extern "udisksctl loop-setup" [
  --file(-f)                #用于设置循环设备的文件
  --read-only(-r)           #设置只读设备
  --offset(-o)              #从文件中的 <num> 个字节开始
  --size(-s)                #将大小限制为 <num> 字节
  --no-user-interaction     #如果需要，不验证用户身份
  --no-partition-scan       #不扫描循环设备的分区
]      
# 删除循环设备
export extern "udisksctl loop-delete" [
  --object-path(-p)         #要删除的循环设备对象
  --block-device(-b)        #要删除的循环设备
  --no-user-interaction     #如果需要，不验证用户身份
]     
# 安全关闭驱动器电源
export extern "udisksctl power-off" [
  --object-path(-p)         #ATA 设备的对象路径
  --block-device(-b)        #ATA 设备的设备文件
  --no-user-interaction     #如果需要，不验证用户身份
]       
# 设置驱动器的 SMART 数据
export extern "udisksctl smart-simulate" [
  --file(-f)                #包含 libatasmart blob 的文件
  --object-path(-p)         #ATA 设备的对象路径
  --block-device(-b)        #ATA 设备的设备文件
  --no-user-interaction     #如果需要，不验证用户身份
]  
