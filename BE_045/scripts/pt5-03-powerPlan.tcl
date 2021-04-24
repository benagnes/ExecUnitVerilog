# Plan power ring and global net pins

# Building a Power Ring for Vdd / Vdds, extending top/bottom segments to create pins
# From the LEF file we know that M9 and M10 are the highest metals, and that the min width of the M9 M10 metals
# is 0.8. We need to make this ring a multiple of 0.8 
# Note that in the foorplan we must reserve enough space between core (rows) and pins to build rings 

#vdd/vss pins - create pgpins and connect to global network
globalNetConnect VDD -type pgpin -pin VDD    -inst * -all -override -verbose
globalNetConnect VDD -type tiehi             -inst * -all -override -verbose
globalNetConnect VSS -type pgpin -pin VSS    -inst * -all -override -verbose
globalNetConnect VSS -type tielo             -inst * -all -override -verbose

# Metal 7 and metal 8 for power grid
# -threshold auto (addRing flag)
#addRing -nets {VDD VSS} -width 0.6 -spacing 0.8 -layer [list top 7 bottom 7 left 8 right 8]

#setViaGenMode -optimize_via_on_routing_track true
#setAddStripeMode -optimize_stripe_for_routing_track shift
#addStripe -nets {VSS VDD} -layer 7 -direction vertical -width 0.5 -spacing 0.8 -set_to_set_distance 5
#addStripe -nets {VSS VDD} -layer 8 -direction horizontal -width 0.6 -spacing 0.6 -set_to_set_distance 5
#sroute -connect { blockPin corePin floatingStripe } -allowJogging true -allowLayerChange true -blockPin useLef -nets {VDD VSS}

# Metal 8 and metal 9
# -threshold auto (addRing flag)
# having 0.6 width for ring and stripes only made 8 metal 10 errors where they seem to not be wide enough!!!!!!!
#addRing -nets {VDD VSS} -width 0.6 -spacing 2 -layer [list top 7 bottom 7 left 8 right 8]
addRing -nets {VDD VSS} -width 0.8 -spacing 3 -layer 7
addRing -nets {VDD VSS} -width 0.8 -spacing 3 -layer 8 -follow io
#addRing -nets {VDD VSS} -width 4.0 -spacing 1.5 -layer [list top 7 bottom 7 left 8 right 9] -type block_rings -around each_block -threshold auto

#setViaGenMode -optimize_via_on_routing_track true
#setAddStripeMode -optimize_stripe_for_routing_track shift
addStripe -nets {VDD VSS} -layer 7 -direction vertical -width 0.8 -spacing 3 -set_to_set_distance 20
addStripe -nets {VDD VSS} -layer 8 -direction horizontal -width 0.8 -spacing 3 -set_to_set_distance 20
#addStripe -nets { VDD} -layer 9 -direction horizontal -width 4 -spacing 4 -set_to_set_distance 80 -all_blocks 1
sroute -connect { blockPin corePin floatingStripe } -allowJogging true -allowLayerChange true -blockPin useLef -nets {VDD VSS}

#setRouteMode -earlyGlobalMaxRouteLayer 8

defOut -floorplan -noStdCells results/ensc450_powerPlan.def
saveDesign ./DBS/03-floorplan.enc -relativePath -compress
summaryReport -outfile results/summary/pt5-03-powerplan.rpt

