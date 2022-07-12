OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rz(-3.14) q[0];
rz(-3.14) q[0];
rz(0.0) q[1];
cx q[0],q[1];
rz(3.14) q[1];
rx(pi/2) q[1];
rz(4.71159265358979) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(1.57159265358979) q[1];
rx(pi/2) q[1];
rz(6.28477796076938) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];