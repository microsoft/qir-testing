OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg meas[1];
rz(1.03920818982183) q[0];
rx(pi/2) q[0];
rz(3.82401496062653) q[0];
rx(pi/2) q[0];
rz(8.89318982379632) q[0];
barrier q[0];
measure q[0] -> meas[0];
