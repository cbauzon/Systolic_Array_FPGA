# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/cj/vivado_projects/systolic_array/systolic_array_project/systolic_array_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/cj/vivado_projects/systolic_array/systolic_array_project/systolic_array_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {systolic_array_platform}\
-hw {/home/cj/vivado_projects/systolic_array/systolic_array_project/design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/home/cj/vivado_projects/systolic_array/systolic_array_project}

platform write
platform generate -domains 
platform active {systolic_array_platform}
platform generate
platform active {systolic_array_platform}
platform generate
platform active {systolic_array_platform}
platform config -updatehw {/home/cj/vivado_projects/systolic_array/systolic_array_project/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/cj/vivado_projects/systolic_array/systolic_array_project/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/cj/vivado_projects/systolic_array/systolic_array_project/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/cj/vivado_projects/systolic_array/systolic_array_project/design_1_wrapper.xsa}
platform generate -domains 
platform clean
platform clean
platform active {systolic_array_platform}
platform config -updatehw {/home/cj/vivado_projects/systolic_array/systolic_array_project/design_1_wrapper.xsa}
platform generate
platform config -updatehw {/home/cj/vivado_projects/systolic_array/systolic_array_project/design_1_wrapper.xsa}
platform generate -domains 
platform generate -domains standalone_domain,zynq_fsbl 
platform active {systolic_array_platform}
