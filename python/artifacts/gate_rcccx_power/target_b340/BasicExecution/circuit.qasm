OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
cx q[2],q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
cx q[0],q[3];
rz(pi/4) q[3];
cx q[1],q[3];
rz(-pi/4) q[3];
cx q[0],q[3];
rz(pi/4) q[3];
cx q[1],q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
cx q[2],q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
cx q[2],q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
cx q[0],q[3];
rz(pi/4) q[3];
cx q[1],q[3];
rz(-pi/4) q[3];
cx q[0],q[3];
rz(pi/4) q[3];
cx q[1],q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
cx q[2],q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
cx q[2],q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
cx q[0],q[3];
rz(pi/4) q[3];
cx q[1],q[3];
rz(-pi/4) q[3];
cx q[0],q[3];
rz(pi/4) q[3];
cx q[1],q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
rz(pi/4) q[3];
cx q[2],q[3];
rz(-pi/4) q[3];
rz(pi/2) q[3];
rx(pi/2) q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
