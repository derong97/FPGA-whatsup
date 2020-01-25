set projDir "C:/Users/deron/Desktop/FinalProjectHere/work/planAhead"
set projName "FinalProjectHere"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/mojo_top_0.v" "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/multi_seven_seg_1.v" "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/counter_2.v" "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/reset_conditioner_3.v" "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/alu_4.v" "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/counter_5.v" "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/seven_seg_6.v" "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/decoder_7.v" "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/add_8.v" "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/boole_9.v" "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/shift_10.v" "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/cmp_11.v" "C:/Users/deron/Desktop/FinalProjectHere/work/verilog/muldiv_12.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list  "D:/Documents/Mojo\ IDE/library/components/io_shield.ucf" "D:/Documents/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
