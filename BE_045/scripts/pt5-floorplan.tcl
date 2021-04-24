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

#floorPlan -su 1 0.70 5 5 5 5
# measure area manually with rulers later when using su flag

floorplan -d 650 650 5 5 5 5
#floorplan -d 600 600 5 5 5 5
# floorplan -d W H coretoleft coretobottom coretoright coretotop

# ensc 450 pins
#    clk,resetn : in  std_logic;
#    -- Master port to control the subsystem from outside (i.e. testbench)
#    EXT_NREADY         : out   Std_logic;
#    EXT_BUSY           : in    Std_logic;
#    EXT_MR, EXT_MW     : in    Std_logic;
#    EXT_ADDRBUS        : in    Std_logic_vector(addr_size-1 downto 0);
#    EXT_RDATABUS       : out   Std_logic_vector(data_size-1 downto 0);
#    EXT_WDATABUS       : in    Std_logic_vector(data_size-1 downto 0) );

# input pins
editPin -fixedPin 1 -snap TRACK -side Top -unit TRACK -layer 2 -spreadType center -spacing 40.0 -pin {resetn EXT_BUSY EXT_MR EXT_MW EXT_ADDRBUS*}
# try splitting pins up
editPin -fixedPin 1 -snap TRACK -side Right -unit TRACK -layer 2 -spreadType center -spacing 40.0 -pin {EXT_WDATABUS*}

# output pins
#-use TIELOW is meant to set output pins to 0. Notice how these pins are all of type output.
editPin -fixedPin 1 -snap TRACK -side Left -use TIELOW -unit TRACK -layer 2 -spreadType center -spacing 50.0 -pin {EXT_RDATABUS* EXT_NREADY}

#Usage: placeInstance
#    placeInstance [-help] instance_name locationX locationY [orientation] [{-fixed | -placed | -softFixed}]
#setPlaceMode -prerouteAsObs {1 2 3}

# 400 works except a pin overlaps a wire
#placeInstance my_Mem 50.0 401.0 R270 -placed
placeInstance my_Mem 80.0 451.0 R180 -placed
placeInstance my_core_adapter 260.0 40.0 -placed

# place Halos
#Usage: addRoutingHalo [-help] { {-bottom <name> -space <float> -top <name>} | -lithoHalo } {-allBlocks  | -block <name> | -cell <name> | -inst <name> | -designHalo  }
#addRoutingHalo -bottom M2 -space 5 -top M6 -inst my_core_adapter
#addRoutingHalo -bottom M2 -space 5 -top M6 -inst my_Mem
#addHaloToBlock 10 10 10 10 -allMacro 

# save floorplan
defOut -floorplan -noStdCells results/ensc450_floorplan.def
saveDesign ./DBS/01-floorplan.enc -relativePath -compress
summaryReport -outfile results/summary/pt5-01-floorplan.rpt
