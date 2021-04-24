# Runs all innovus scripts needed to do a complete floorplan for entire ensc 450 system with core_adapter and sram implemented as hard macros
# need to measure execution time from start to finish

#restoreDesign /local-scratch/localhome/escmc38/Desktop/ensc450/fpu_double_backend/BE_045/fpu_double_01_floorplan.enc.dat fpu_double

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set enc_enable_print_mode_command_reset_options 1
set init_gnd_net VSS
set init_lef_file {/CMC/setups/ensc450/SOCLAB/LIBRARIES/NangateOpenCellLibrary_PDKv1_3_v2010_12/Back_End/lef/NangateOpenCellLibrary.lef inputs/core_adapter.lef inputs/SRAM.lef}
set init_mmmc_file part5.view
set init_pwr_net VDD
set init_top_cell ensc450
set init_verilog inputs/ensc450.ref.v
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
set report_inactive_arcs_format {from to when arc_type sense reason}
set soft_stack_size_limit 31
suppressMessage -silent GLOBAL-100
unsuppressMessage -silent GLOBAL-100
suppressMessage -silent GLOBAL-100
unsuppressMessage -silent GLOBAL-100
set timing_enable_default_delay_arc 1
init_design

set TIME_start [clock clicks -milliseconds]

source scripts/pt5-floorplan.tcl
source scripts/pt5-03-powerPlan.tcl
source scripts/pt5-04-placement.tcl
source scripts/pt5-05-postPlaceOpt.tcl
source scripts/pt5-06-cts.tcl
source scripts/pt5-07-postCTSOpt.tcl
source scripts/pt5-08-route.tcl
source scripts/pt5-09-finishing.tcl
set end [clock milliseconds]
set TIME_taken [expr [clock clicks -milliseconds] - $TIME_start]

report_area > results/post_PR_area.rpt
checkFPlan -reportUtil > results/post_PR_FPlan.rpt
report_power > results/post_PR_power.rpt

puts $TIME_taken

setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false

