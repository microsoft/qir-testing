OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[1];
x q[3];
measure q[3] -> c[0];
