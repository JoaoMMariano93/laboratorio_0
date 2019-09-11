onerror {quit -f}
vlib work
vlog -work work ula_aula1109.vo
vlog -work work ula_aula1109.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ula_aula1109_vlg_vec_tst
vcd file -direction ula_aula1109.msim.vcd
vcd add -internal ula_aula1109_vlg_vec_tst/*
vcd add -internal ula_aula1109_vlg_vec_tst/i1/*
add wave /*
run -all
