#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Apr 20 13:05:22 2021                
#                                                     
#######################################################

#@(#)CDS: Innovus v18.10-p002_1 (64bit) 05/29/2018 19:19 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 18.10-p002_1 NR180522-1057/18_10-UB (database version 2.30, 418.7.1) {superthreading v1.46}
#@(#)CDS: AAE 18.10-p004 (64bit) 05/29/2018 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 18.10-p003_1 () May 15 2018 10:23:07 ( )
#@(#)CDS: SYNTECH 18.10-a012_1 () Apr 19 2018 01:27:21 ( )
#@(#)CDS: CPE v18.10-p005
#@(#)CDS: IQRC/TQRC 18.1.1-s118 (64bit) Fri Mar 23 17:23:45 PDT 2018 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set enc_enable_print_mode_command_reset_options 1
set init_gnd_net VSS
set init_lef_file /CMC/setups/ensc450/SOCLAB/LIBRARIES/NangateOpenCellLibrary_PDKv1_3_v2010_12/Back_End/lef/NangateOpenCellLibrary.lef
set init_mmmc_file Default.view
set init_oa_search_lib {}
set init_original_verilog_files inputs/core_adapter.ref.v
set init_pwr_net VDD
set init_top_cell core_adapter
set init_verilog inputs/core_adapter.ref.v
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
set report_inactive_arcs_format {from to when arc_type sense reason}
set soft_stack_size_limit 31
suppressMessage -silent GLOBAL-100
unsuppressMessage -silent GLOBAL-100
suppressMessage -silent GLOBAL-100
unsuppressMessage -silent GLOBAL-100
suppressMessage -silent GLOBAL-100
unsuppressMessage -silent GLOBAL-100
suppressMessage -silent GLOBAL-100
unsuppressMessage -silent GLOBAL-100
set timing_enable_default_delay_arc 1
init_design
set defOutLefVia 1
set lefDefOutVersion 5.5
floorPlan -d 260 260 5 5 5 5
editPin -fixedPin 1 -snap TRACK -side Top -unit TRACK -layer 2 -spreadType center -spacing 15.0 -pin {resetn addr_in* mr mw data_in*}
editPin -fixedPin 1 -snap TRACK -side Left -use TIELOW -unit TRACK -layer 2 -spreadType center -spacing 25.0 -pin {data_out* nready}
globalNetConnect VDD -type pgpin -pin VDD -inst * -all -override
globalNetConnect VDD -type tiehi -inst * -all -override
globalNetConnect VSS -type pgpin -pin VSS -inst * -all -override
globalNetConnect VSS -type tielo -inst * -all -override
addRing -nets {VDD VSS} -width 0.6 -spacing 0.8 -layer {top 7 bottom 7 left 6 right 6}
addStripe -nets {VSS VDD} -layer 6 -direction vertical -width 0.4 -spacing 1.0 -set_to_set_distance 5
addStripe -nets {VSS VDD} -layer 7 -direction horizontal -width 0.4 -spacing 0.8 -set_to_set_distance 5
sroute -connect { corePin floatingStripe } -routingEffort allowShortJogs -nets {VDD VSS}
defOut -floorplan -noStdCells results/core_adapter_floor.def
saveDesign ./DBS/03-floorplan.enc -relativePath -compress
summaryReport -outfile results/summary/03-floorplan.rpt
report_message -start_cmd
getRouteMode -maxRouteLayer -quiet
getRouteMode -user -maxRouteLayer
getPlaceMode -user -maxRouteLayer
getPlaceMode -quiet -adaptiveFlowMode
getPlaceMode -timingDriven -quiet
getPlaceMode -adaptive -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getDesignMode -quiet -siPrevention
getPlaceMode -exp_slack_driven -quiet
um::push_snapshot_stack
getDesignMode -quiet -flowEffort
getDesignMode -highSpeedCore -quiet
getPlaceMode -quiet -adaptive
set spgFlowInInitialPlace 1
getPlaceMode -sdpAlignment -quiet
getPlaceMode -softGuide -quiet
getPlaceMode -useSdpGroup -quiet
getPlaceMode -sdpAlignment -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -sdpPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -sdpPlace -quiet
getPlaceMode -groupHighLevelClkGate -quiet
setvar spgRptErrorForScanConnection 0
getPlaceMode -place_global_exp_allow_missing_scan_chain -quiet
getPlaceMode -place_check_library -quiet
getPlaceMode -trimView -quiet
getPlaceMode -expTrimOptBeforeTDGP -quiet
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -congEffort -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -congEffort -quiet
getPlaceMode -fp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -user -timingDriven
getPlaceMode -fastFp -quiet
getPlaceMode -clusterMode -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -ultraCongEffortFlow -quiet
getPlaceMode -forceTiming -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -powerDriven -quiet
getExtractRCMode -quiet -engine
getAnalysisMode -quiet -clkSrcPath
getAnalysisMode -quiet -clockPropagation
getAnalysisMode -quiet -cppr
setExtractRCMode -engine preRoute
setAnalysisMode -clkSrcPath false -clockPropagation forcedIdeal
getPlaceMode -exp_slack_driven -quiet
isAnalysisModeSetup
getPlaceMode -tdgpResetCteTG -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -place_global_ignore_spare -quiet
set gpsPrivate::coegIsGbSignedSeedNl 0
getPlaceMode -enableDistPlace -quiet
getPlaceMode -quiet -expNewFastMode
setPlaceMode -expHiddenFastMode 1
setPlaceMode -reset -ignoreScan
getPlaceMode -quiet -place_global_exp_auto_finish_floorplan
getPlaceMode -quiet -IOSlackAdjust
getPlaceMode -tdgpCteZeroDelayModeDelBuf -quiet
set_global timing_enable_zero_delay_analysis_mode true
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -quiet -prePlaceOptSimplifyNetlist
getPlaceMode -quiet -enablePrePlaceOptimizations
getPlaceMode -quiet -prePlaceOptDecloneInv
deleteBufferTree -decloneInv
getPlaceMode -tdgpCteZeroDelayModeDelBuf -quiet
set_global timing_enable_zero_delay_analysis_mode false
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -honorUserPathGroup -quiet
getAnalysisMode -quiet -honorClockDomains
set delaycal_use_default_delay_limit 101
set delaycal_default_net_delay 0
set delaycal_default_net_load 0
set delaycal_default_net_load_ignore_for_ilm 0
getAnalysisMode -clkSrcPath -quiet
getAnalysisMode -clockPropagation -quiet
getAnalysisMode -checkType -quiet
buildTimingGraph
getDelayCalMode -ignoreNetLoad -quiet
getDelayCalMode -ignoreNetLoad -quiet
setDelayCalMode -ignoreNetLoad true -quiet
get_global timing_enable_path_group_priority
get_global timing_constraint_enable_group_path_resetting
set_global timing_enable_path_group_priority false
set_global timing_constraint_enable_group_path_resetting false
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2reg_tmp.13638 -from {0x69 0x6c} -to 0x6d -ignore_source_of_trigger_arc
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2out_tmp.13638 -from {0x70 0x73} -to 0x74 -ignore_source_of_trigger_arc
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2reg_tmp.13638 -from 0x76 -to 0x77
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2out_tmp.13638 -from 0x7a -to 0x7b
setPathGroupOptions reg2reg_tmp.13638 -effortLevel high
reset_path_group -name reg2out_tmp.13638
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2out_tmp.13638
set_global _is_ipo_interactive_path_groups 0
setDelayCalMode -ignoreNetLoad false
set delaycal_use_default_delay_limit 1000
set delaycal_default_net_delay 1000ps
set delaycal_default_net_load 0.5pf
set delaycal_default_net_load_ignore_for_ilm 0
getPlaceMode -place_global_exp_ignore_low_effort_path_groups -quiet
getPlaceMode -exp_slack_driven -quiet
getAnalysisMode -quiet -honorClockDomains
setDelayCalMode -engine feDc
psp::embedded_egr_init_
psp::embedded_egr_term_
psp::embedded_egr_init_
psp::embedded_egr_term_
psp::embedded_egr_init_
psp::embedded_egr_term_
scanReorder
setDelayCalMode -engine aae
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
get_ccopt_clock_trees *
getPlaceMode -exp_insert_guidance_clock_tree -quiet
getPlaceMode -exp_cluster_based_high_fanout_buffering -quiet
getPlaceMode -quiet -cong_repair_commit_clock_net_route_attr
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
setPlaceMode -reset -improveWithPsp
getPlaceMode -quiet -debugGlobalPlace
getPlaceMode -congRepair -quiet
getPlaceMode -fp -quiet
getPlaceMode -congEffort -quiet
getPlaceMode -user -rplaceIncrNPClkGateAwareMode
getPlaceMode -user -congRepairMaxIter
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -rplaceIncrNPClkGateAwareMode 4
getPlaceMode -quiet -congEffort
setPlaceMode -congRepairMaxIter 1
getDesignMode -quiet -congEffort
getPlaceMode -quickCTS -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -congRepairForceTrialRoute -quiet
getPlaceMode -user -congRepairForceTrialRoute
setPlaceMode -congRepairForceTrialRoute true
um::enable_metric
congRepair
um::enable_metric
um::enable_metric
um::enable_metric
setPlaceMode -reset -congRepairForceTrialRoute
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -reset -rplaceIncrNPClkGateAwareMode
setPlaceMode -reset -congRepairMaxIter
getPlaceMode -congRepairCleanupPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -tdgpDumpStageTiming -quiet
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
getPlaceMode -exp_slack_driven -quiet
reset_path_group -name reg2reg_tmp.13638
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2reg_tmp.13638
set_global _is_ipo_interactive_path_groups 0
set_global timing_enable_path_group_priority $gpsPrivate::optSave_ctePGPriority
set_global timing_constraint_enable_group_path_resetting $gpsPrivate::optSave_ctePGResetting
getPlaceMode -trimView -quiet
getOptMode -quiet -viewOptPolishing
getOptMode -quiet -fastViewOpt
spInternalUse deleteViewOptManager
setAnalysisMode -clkSrcPath true -clockPropagation sdcControl
getPlaceMode -exp_slack_driven -quiet
setExtractRCMode -engine preRoute
setPlaceMode -reset -relaxSoftBlockageMode
setPlaceMode -reset -ignoreScan
setPlaceMode -reset -repairPlace
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -enableDistPlace -quiet
set gpsPrivate::coegIsGbSignedSeedNl 0
getPlaceMode -place_global_ignore_spare -quiet
getPlaceMode -enableDistPlace -quiet
setPlaceMode -reset -expHiddenFastMode
getPlaceMode -tcg2Pass -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -doRPlace -quiet
getPlaceMode -RTCPlaceDesignFlow -quiet
getPlaceMode -quickCTS -quiet
set spgFlowInInitialPlace 0
getPlaceMode -user -maxRouteLayer
spInternalUse TDGP resetIgnoreNetLoad
getPlaceMode -place_global_exp_balance_pipeline -quiet
getDesignMode -quiet -flowEffort
report_message -end_cmd
um::create_snapshot -name final -auto min
um::pop_snapshot_stack
um::create_snapshot -name place_design
getPlaceMode -exp_slack_driven -quiet
checkPlace
saveNetlist results/verilog/core_adapter.place.v
saveDesign ./DBS/04-place.enc -relativePath -compress
setExtractRCMode -engine preRoute
setDesignMode -process 45
extractRC
setAnalysisMode -checktype setup -skew true -clockPropagation sdcControl
setAnalysisMode -analysistype single -checkType setup -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews -reportOnly -numPaths 10 -outDir results/timing/04-place-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 > results/timing/04-place.setup.rpt
summaryReport -outfile results/summary/04-place.rpt
initECO ipo1.txt
setExtractRCMode -engine preRoute
extractRC
optDesign -preCTS
endECO
saveNetlist results/verilog/core_adapter.postplaceopt.v
saveDesign ./DBS/05-postPlaceOpt.enc -relativePath -compress
setAnalysisMode -analysistype single -checkType setup -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews -reportOnly -numPaths 10 -outDir ./results/timing/05-postPlaceOpt-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 > results/timing/05-postPlaceOpt.rpt
summaryReport -outfile results/summary/05_postPlaceOpt.rpt
all_hold_analysis_views
all_setup_analysis_views
getPlaceMode -doneQuickCTS -quiet
all_hold_analysis_views
all_setup_analysis_views
getPlaceMode -doneQuickCTS -quiet
clockDesign -specFile inputs/core_adapter.cts -outDir results/timing -prefix 06-cts
all_hold_analysis_views
all_setup_analysis_views
getPlaceMode -doneQuickCTS -quiet
all_hold_analysis_views
all_setup_analysis_views
getPlaceMode -doneQuickCTS -quiet
saveNetlist results/verilog/core_adapter.cts.v
saveDesign DBS/06-cts.enc -relativePath -compress
extractRC
setAnalysisMode -checkType hold -asyncChecks async -skew true -clockPropagation sdcControl
timeDesign -slackReports -pathreports -expandReg2Reg -expandedViews -reportOnly -numPaths 10 -hold -outDir ./results/timing/06-cts-timeDesign.hold
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 >  results/timing/06-cts_hold.rpt
setAnalysisMode -checkType setup -asyncChecks async -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews -reportOnly -numPaths 10 -outDir ./results/timing/06-cts-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 >  results/timing/06-cts_setup.rpt
summaryReport -outfile results/summary/06-cts.rpt
initECO temp/ipo2_setup.txt
setExtractRCMode -engine preRoute
extractRC
optDesign -postCTS
endECO
initECO temp/ipo2_hold.txt
setExtractRCMode -engine postRoute -effortLevel low
extractRC
optDesign -postCTS -hold
endECO
saveNetlist results/verilog/core_adapter.postcts.v
saveDesign ./DBS/07-postCtsOpt.enc -relativePath -compress
setExtractRCMode -engine postRoute -effortLevel low
extractRC
setAnalysisMode -checkType hold -asyncChecks async -skew true -clockPropagation sdcControl
timeDesign -slackReports -pathreports -expandReg2Reg -expandedViews -reportOnly -numPaths 10 -hold -outDir results/timing/07-postCTSOpt-timeDesign.hold
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 >  results/timing/07-postCtsOpt_hold.rpt
setAnalysisMode -checkType setup -asyncChecks async -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews -reportOnly -numPaths 10 -outDir ./results/timing/07-postCTSOpt-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 >  results/timing/07-postCtsOpt_setup.rpt
summaryReport -outfile results/summary/07-postCTSOpt.rpt
setAttribute -net clk -weight 100
setAttribute -net clk -avoid_detour true
setAttribute -net clk -bottom_preferred_routing_layer 2
setAttribute -net clk -top_preferred_routing_layer 4
setNanoRouteMode -quiet -drouteFixAntenna false
setNanoRouteMode -quiet -routeInsertAntennaDiode false
setNanoRouteMode -quiet -routeAntennaCellName default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -routeSiEffort medium
setNanoRouteMode -quiet -routeWithSiPostRouteFix false
setNanoRouteMode -quiet -drouteAutoStop false
setNanoRouteMode -quiet -routeSelectedNetOnly false
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer 10
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeUseBlockageForAutoGgrid true
globalDetailRoute
saveNetlist results/verilog/core_adapter.route.v
saveDesign ./DBS/08-route.enc -relativePath -compress
setAnalysisMode -analysisType single -checkType setup -skew true -clockPropagation sdcControl
setExtractRCMode -engine postRoute -effortLevel low
extractRC
setAnalysisMode -checkType hold -skew true -clockPropagation sdcControl
timeDesign -slackReports -pathreports -expandReg2Reg -expandedViews -reportOnly -numPaths 10 -hold -outDir results/timing/08-route-timeDesign.hold
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 > results/timing/08-route.hold.rpt
setAnalysisMode -analysisType single -checkType setup -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews -reportOnly -numPaths 10 -outDir results/timing/08-route-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 > results/timing/08-route.setup.rpt
summaryReport -outfile results/summary/08-route.rpt
addFiller -cell {FILLCELL_X32 FILLCELL_X16 FILLCELL_X8 FILLCELL_X4 FILLCELL_X2 FILLCELL_X1} -prefix FILL
fillNotch -reportfile results/fillnotch.rpt
verifyConnectivity
verifyGeometry -reportfile results/geometry.rpt -noSameNet -noMinSpacing
setExtractRCMode -engine postRoute -effortLevel low
extractRC
setAnalysisMode -checkType hold -skew true -clockPropagation sdcControl
timeDesign -slackReports -pathreports -expandReg2Reg -expandedViews -reportOnly -numPaths 10 -hold -outDir results/timing/09-finishing-timeDesign.hold
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 > results/timing/09-finishing.hold.rpt
setAnalysisMode -analysisType single -checkType setup -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews -reportOnly -numPaths 10 -outDir results/timing/09-finishing-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 > results/timing/09-finishing.setup.rpt
defOut -placement -routing -floorplan results/core_adapter.def
saveNetlist -phys -excludeLeafCell results/verilog/core_adapter.phys.v
saveNetlist -excludeLeafCell results/verilog/core_adapter.final.v
setExtractRCMode -engine postRoute
extractRC
rcOut -spef results/core_adapter.spef
saveDesign DBS/core_adapter.final.enc
summaryReport -outfile results/summary/09-finishing.rpt
set_analysis_view -setup {core_adapter_av} -hold {core_adapter_av}
do_extract_model results/${TOP}_slow.lib -view core_adapter_av
report_area > results/post_PR_area.rpt
checkFPlan -reportUtil > results/post_PR_FPlan.rpt
report_power > results/post_PR_power.rpt
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false
violationBrowserClose
