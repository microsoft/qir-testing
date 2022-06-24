OPENQASM 2.0;
include "qelib1.inc";
qreg q3[2];
qreg q[2];
creg meas[4];
rz(0.3925) q3[1];
cx q3[1],q[0];
rz(-0.3925) q[0];
cx q3[1],q[0];
rz(0.3925) q[0];
cx q3[1],q3[0];
rz(-0.3925) q3[0];
cx q3[0],q[0];
rz(0.3925) q[0];
cx q3[0],q[0];
rz(-0.3925) q[0];
cx q3[1],q3[0];
rz(0.3925) q3[0];
cx q3[0],q[0];
rz(-0.3925) q[0];
cx q3[0],q[0];
rz(0.3925) q[0];
rz(pi/8) q[0];
rz(pi/8) q3[0];
rz(pi/8) q3[1];
cx q3[0],q3[1];
rz(-pi/8) q3[1];
cx q3[0],q3[1];
cx q3[1],q[0];
rz(-pi/8) q[0];
cx q3[0],q[0];
rz(pi/8) q[0];
cx q3[1],q[0];
rz(-pi/8) q[0];
cx q3[0],q[0];
h q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q3[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q3[0],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q3[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(pi/8) q[0];
rz(-pi/8) q[1];
cx q3[0],q[1];
h q[1];
rz(-0.3925) q3[1];
cx q3[1],q[1];
rz(0.3925) q[1];
cx q3[1],q[1];
rz(-0.3925) q[1];
cx q3[1],q3[0];
rz(0.3925) q3[0];
cx q3[0],q[1];
rz(-0.3925) q[1];
cx q3[0],q[1];
rz(0.3925) q[1];
cx q3[1],q3[0];
rz(-0.3925) q3[0];
cx q3[0],q[1];
rz(0.3925) q[1];
cx q3[0],q[1];
rz(-0.3925) q[1];
h q[1];
rz(pi/8) q[1];
rz(pi/8) q3[0];
rz(pi/8) q3[1];
cx q3[0],q3[1];
rz(-pi/8) q3[1];
cx q3[0],q3[1];
cx q3[1],q[0];
rz(-pi/8) q[0];
cx q3[0],q[0];
rz(pi/8) q[0];
cx q3[1],q[0];
rz(-pi/8) q[0];
cx q3[0],q[0];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q3[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q3[0],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q3[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q3[0],q[1];
h q[1];
rz(0.3925) q3[1];
cx q3[1],q[1];
rz(-0.3925) q[1];
cx q3[1],q[1];
rz(0.3925) q[1];
cx q3[1],q3[0];
rz(-0.3925) q3[0];
cx q3[0],q[1];
rz(0.3925) q[1];
cx q3[0],q[1];
rz(-0.3925) q[1];
cx q3[1],q3[0];
rz(0.3925) q3[0];
cx q3[0],q[1];
rz(-0.3925) q[1];
cx q3[0],q[1];
rz(0.3925) q[1];
barrier q3[0],q3[1],q[0],q[1];
measure q3[0] -> meas[0];
measure q3[1] -> meas[1];
measure q[0] -> meas[2];
measure q[1] -> meas[3];
