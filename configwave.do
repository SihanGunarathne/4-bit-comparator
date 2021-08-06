onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench_Comparator/X
add wave -noupdate /testbench_Comparator/Y
add wave -noupdate /testbench_Comparator/XlessthanY
add wave -noupdate /testbench_Comparator/XequalY
add wave -noupdate /testbench_Comparator/XgreaterthanY
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 89
configure wave -valuecolwidth 109
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 300
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {87 ps}
