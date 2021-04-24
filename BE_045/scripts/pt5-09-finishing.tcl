#############################################################################################
# Finishing Steps
#############################################################################################

set TOP ensc450

# Add Filler cells to the design
puts "### Adding Filler Cells"
addFiller -cell {FILLCELL_X32 FILLCELL_X16 FILLCELL_X8 FILLCELL_X4 FILLCELL_X2 FILLCELL_X1} -prefix FILL

fillNotch -reportfile results/fillnotch.rpt

# Signoff Step: Running Electrical checks  #################################

verifyConnectivity

# Verify Geometry
# nosameNet comes from Cadence Flow Manual; noShorts? could check from gui
verifyGeometry -reportfile results/geometry.rpt -noSameNet -noMinSpacing

# Signoff Step: Running final timing checks #############################

setExtractRCMode -engine postRoute -effortLevel low
extractRC

setAnalysisMode -checkType hold -skew true -clockPropagation sdcControl
timeDesign  -slackReports -pathreports -expandReg2Reg -expandedViews \
            -reportOnly -numPaths 10 -hold -outDir results/timing/pt5-09-finishing-timeDesign.hold
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 > results/timing/pt5-09-finishing.hold.rpt

setAnalysisMode -analysisType single -checkType setup -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews \
           -reportOnly -numPaths 10 -outDir results/timing/pt5-09-finishing-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 > results/timing/pt5-09-finishing.setup.rpt

# Writing out final results #############################################

# Create DEF
defOut -placement -routing -floorplan results/$TOP.def

# Create LEF
lefOut results/$TOP.lef

# Create Netlist
saveNetlist -phys -excludeLeafCell results/verilog/$TOP.phys.v
saveNetlist       -excludeLeafCell results/verilog/$TOP.final.v

# Create SPEF
setExtractRCMode -engine postRoute
extractRC
rcOut -spef results/$TOP.spef
# Save Encounter Database
saveDesign DBS/$TOP.final.enc
summaryReport  -outfile results/summary/pt5-09-finishing.rpt

# Generate TLF Model with PKS (need for embedded module)
set_analysis_view -setup {ensc450_av} -hold {ensc450_av}
do_extract_model results/${TOP}_slow.lib -view ensc450_av

exec dc_shell-xg-t -shell lc_shell -x "read_lib results/${TOP}_slow.lib; write_lib ${TOP} -format db -output results/${TOP}_slow.db; exit"

#report_area > results/post_PR_area.rpt
#checkFPlan -reportUtil > results/post_PR_FPlan.rpt
#report_power > results/post_PR_power.rpt
#setLayerPreference violation -isVisible 1
#violationBrowser -all -no_display_false

