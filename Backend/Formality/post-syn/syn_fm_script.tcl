set PROJECT_PATH /home/IC/Projects/System/
set LIB_PATH     /home/IC/tsmc_fb_cl013g_sc/aci/sc-m
############################  Search PATH ################################

lappend search_path $LIB_PATH/synopsys
lappend search_path $PROJECT_PATH/RTL/ALU
lappend search_path $PROJECT_PATH/RTL/ASYNC_FIFO
lappend search_path $PROJECT_PATH/RTL/CLK_DIV
lappend search_path $PROJECT_PATH/RTL/Clock_Gating
lappend search_path $PROJECT_PATH/RTL/DATA_SYNC
lappend search_path $PROJECT_PATH/RTL/REG_FILE
lappend search_path $PROJECT_PATH/RTL/PULSE_GEN
lappend search_path $PROJECT_PATH/RTL/RST_SYNC
lappend search_path $PROJECT_PATH/RTL/SYS_CNTRL
lappend search_path $PROJECT_PATH/RTL/RX_DIV_R_CALC
lappend search_path $PROJECT_PATH/RTL/UART/RX
lappend search_path $PROJECT_PATH/RTL/UART/TX
lappend search_path $PROJECT_PATH/RTL/UART/UART_TOP
lappend search_path $PROJECT_PATH/RTL/SYS_TOP

########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "../../Synthesis/$top_module.svf"

####################### Read Reference tech libs ########################
 

set SSLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

###################  Read Reference Design Files ######################## 
read_verilog -container Ref "ALU.v"

read_verilog -container Ref "BIT_SYNC.v"
read_verilog -container Ref "FIFO_MEM.v"
read_verilog -container Ref "READ_EMPTY.v"
read_verilog -container Ref "WRITE_FULL.v"
read_verilog -container Ref "ASYNC_FIFO.v"

read_verilog -container Ref "RX_DIV_R_CALC.v"

read_verilog -container Ref "ClkDiv.v"

read_verilog -container Ref "CLK_GATE.v"

read_verilog -container Ref "DATA_SYNC.v"

read_verilog -container Ref "Reg_File.v"

read_verilog -container Ref "PULSE_GEN.v"

read_verilog -container Ref "RST_SYNC.v"

read_verilog -container Ref "SYS_CNTRL.v"

read_verilog -container Ref "data_sampling.v"
read_verilog -container Ref "deserializer.v"
read_verilog -container Ref "edge_bit_counter.v"
read_verilog -container Ref "par_chk.v"
read_verilog -container Ref "stp_chk.v"
read_verilog -container Ref "UART_RX.v"
read_verilog -container Ref "UART_RX_DATAPATH.v"
read_verilog -container Ref "UART_RX_fsm.v"

read_verilog -container Ref "parity_calc.v"
read_verilog -container Ref "serializer.v"
read_verilog -container Ref "UART_TX_fsm.v"
read_verilog -container Ref "UART_TX_TOP.v"
read_verilog -container Ref "UART_TX_DATA_PATH.v"

read_verilog -container Ref "UART.v"

read_verilog -container Ref "SYS_TOP.v"

######################## set the top Reference Design ######################## 

set_reference_design SYS_TOP
set_top SYS_TOP

####################### Read Implementation tech libs ######################## 

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

#################### Read Implementation Design Files ######################## 

read_verilog -container Imp -netlist "/home/IC/Projects/System/Backend/Synthesis/netlists/SYS_TOP.v"

####################  set the top Implementation Design ######################

set_implementation_design SYS_TOP
set_top SYS_TOP


## matching Compare points
match

## verify
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui

