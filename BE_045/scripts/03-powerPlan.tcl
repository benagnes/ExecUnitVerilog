# Create Floorplan (45 nm)

# floorPlan -su <aspectRatio> [<stdCellDensity> [<coreToLeft> <coreToBottom> <coreToRight> <coreToTop>]]
set defOutLefDNR 1
set defOutLefVia 1
set lefDefOutVersion 5.5

exec rm -rf temp
exec mkdir temp
exec rm -rf results
exec mkdir results
exec mkdir results/summary
exec mkdir results/timing
exec mkdir results/verilog

#floorPlan -su 1 0.95 4 4 4 4 
# measure area manually with rulers later when using su flag

floorplan -d 260 260 5 5 5 5
# floorplan -d W H coretoleft coretobottom coretoright coretotop

# input pins
editPin -fixedPin 1 -snap TRACK -side Top -unit TRACK -layer 2 -spreadType center -spacing 15.0 -pin {resetn addr_in* mr mw data_in*}

# output pins
#-use TIELOW is meant to set output pinst to 0. Notice how these pins are all of type output.
editPin -fixedPin 1 -snap TRACK -side Left -use TIELOW -unit TRACK -layer 2 -spreadType center -spacing 25.0 -pin {data_out* nready}

#vdd/vss pins adding 
globalNetConnect VDD -type pgpin -pin VDD    -inst * -all -override
globalNetConnect VDD -type tiehi             -inst * -all -override
globalNetConnect VSS -type pgpin -pin VSS    -inst * -all -override
globalNetConnect VSS -type tielo             -inst * -all -override

# Building a Power Ring for Vdd / Vdds, extending top/bottom segments to create pins
# From the LEF file we know that M9 and M10 are the highest metals, and that the min width of the M9 M10 metals
# is 0.8. We need to make this ring a multiple of 0.8. Since the area is small, we dont expect huge consumption,
# we keep it at pitch. 
# Note that in the foorplan we must reserve enough space between core (rows) and pins to build rings 

addRing -nets {VDD VSS} -width 0.6 -spacing 0.8 \
       -layer [list top 7 bottom 7 left 6 right 6]

#hookup the rings with stripes
# at 0.8 seemed we had 
addStripe -nets {VSS VDD} -layer 6 -direction vertical -width 0.4 -spacing 1.0 -set_to_set_distance 5
addStripe -nets {VSS VDD} -layer 7 -direction horizontal -width 0.4 -spacing 0.8 -set_to_set_distance 5
# removed blockPin from line 53
sroute -connect { corePin floatingStripe } -routingEffort allowShortJogs  -nets {VDD VSS}

defOut -floorplan -noStdCells results/core_adapter_floor.def
saveDesign ./DBS/03-floorplan.enc -relativePath -compress
summaryReport -outfile results/summary/03-floorplan.rpt

