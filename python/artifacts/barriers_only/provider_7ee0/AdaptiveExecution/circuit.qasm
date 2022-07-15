OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[1];
barrier q[0],q[1];
barrier q[0],q[1];
