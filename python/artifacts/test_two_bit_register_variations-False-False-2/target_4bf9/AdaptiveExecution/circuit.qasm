OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg cr[2];
creg cond[1];
measure q[0] -> cr[0];
measure q[1] -> cr[1];
if(cr==2) x q[2];
measure q[2] -> cond[0];
