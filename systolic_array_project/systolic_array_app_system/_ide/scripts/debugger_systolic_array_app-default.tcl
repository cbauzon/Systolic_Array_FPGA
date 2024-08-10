# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/cj/vivado_projects/systolic_array/systolic_array_project/systolic_array_app_system/_ide/scripts/debugger_systolic_array_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/cj/vivado_projects/systolic_array/systolic_array_project/systolic_array_app_system/_ide/scripts/debugger_systolic_array_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/cj/vivado_projects/systolic_array/systolic_array_project/systolic_array_platform/export/systolic_array_platform/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
stop
source /home/cj/vivado_projects/systolic_array/systolic_array_project/systolic_array_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
rst -processor
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/cj/vivado_projects/systolic_array/systolic_array_project/systolic_array_app/Debug/systolic_array_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
