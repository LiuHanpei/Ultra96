
set TopModule "main_func"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix main_func_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xczu3eg:-sbva484:-1-e
set SourceFiles {sc {} c {../conv1x1.cpp ../dw_conv3x3.cpp ../main_func.cpp ../utils.cpp}}
set SourceFlags {sc {} c {{} {} {} {}}}
set DirectiveFile {}
set TBFiles {verilog {../dw_conv_bias1x1.bin ../dw_conv_bias3x3.bin ../dw_conv_input3x3.bin ../dw_conv_output1x1.bin ../dw_conv_output3x3.bin ../dw_conv_weight1x1.bin ../dw_conv_weight3x3.bin ../sim.cpp} bc {../dw_conv_bias1x1.bin ../dw_conv_bias3x3.bin ../dw_conv_input3x3.bin ../dw_conv_output1x1.bin ../dw_conv_output3x3.bin ../dw_conv_weight1x1.bin ../dw_conv_weight3x3.bin ../sim.cpp} sc {../dw_conv_bias1x1.bin ../dw_conv_bias3x3.bin ../dw_conv_input3x3.bin ../dw_conv_output1x1.bin ../dw_conv_output3x3.bin ../dw_conv_weight1x1.bin ../dw_conv_weight3x3.bin ../sim.cpp} vhdl {../dw_conv_bias1x1.bin ../dw_conv_bias3x3.bin ../dw_conv_input3x3.bin ../dw_conv_output1x1.bin ../dw_conv_output3x3.bin ../dw_conv_weight1x1.bin ../dw_conv_weight3x3.bin ../sim.cpp} c {} cas {../dw_conv_bias1x1.bin ../dw_conv_bias3x3.bin ../dw_conv_input3x3.bin ../dw_conv_output1x1.bin ../dw_conv_output3x3.bin ../dw_conv_weight1x1.bin ../dw_conv_weight3x3.bin ../sim.cpp}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus}}}
set HPFPO 0