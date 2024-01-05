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
export extern "udisksctl unmount" [ ]         
# 解锁加密设备
export extern "udisksctl unlock" [ ]          
# 锁定加密设备
export extern "udisksctl lock" [ ]            
# 设置循环设备
export extern "udisksctl loop-setup" [ ]      
# 删除循环设备
export extern "udisksctl loop-delete" [ ]     
# 安全关闭驱动器电源
export extern "udisksctl power-off" [ ]       
# 设置驱动器的 SMART 数据
export extern "udisksctl smart-simulate" [ ]  
