OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg cr[2];
x q[0];
measure q[0] -> cr[0];
if(cr==0) x q[1];
measure q[1] -> cr[1];
