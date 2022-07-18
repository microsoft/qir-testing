OPENQASM 2.0;
include "qelib1.inc";
qreg q31[2];
qreg q[1];
creg meas[3];
rz(pi/8) q31[1];
rz(pi/8) q[0];
cx q31[1],q[0];
rz(-pi/8) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
cx q31[1],q[0];
rz(0) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
rz(pi/8) q[0];
cx q31[1],q31[0];
rz(-pi/8) q31[0];
cx q31[0],q[0];
rz(pi/8) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
cx q31[0],q[0];
rz(0) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(11*pi/4) q[0];
rz(pi/8) q[0];
cx q31[1],q31[0];
rz(pi/8) q31[0];
cx q31[0],q[0];
rz(-pi/8) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
cx q31[0],q[0];
rz(0) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
barrier q31[0],q31[1],q[0];
measure q31[0] -> meas[0];
measure q31[1] -> meas[1];
measure q[0] -> meas[2];