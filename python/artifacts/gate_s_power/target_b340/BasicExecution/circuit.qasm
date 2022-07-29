OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg meas[1];
s q[0];
s q[0];
s q[0];
barrier q[0];
measure q[0] -> meas[0];
