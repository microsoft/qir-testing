OPENQASM 2.0;
include "qelib1.inc";
qreg q14[2];
qreg q[2];
creg meas[4];
rz(pi/8) q14[0];
rz(pi/8) q14[1];
cx q14[0],q14[1];
rz(-pi/8) q14[1];
cx q14[0],q14[1];
rz(pi/8) q[0];
cx q14[1],q[0];
rz(-pi/8) q[0];
cx q14[0],q[0];
rz(pi/8) q[0];
cx q14[1],q[0];
rz(-pi/8) q[0];
cx q14[0],q[0];
h q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q14[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q14[0],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q14[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
h q[0];
rz(pi/8) q[0];
rz(-pi/8) q[1];
cx q14[0],q[1];
h q[1];
rz(pi/8) q[1];
rz(pi/8) q14[0];
rz(pi/8) q14[1];
cx q14[0],q14[1];
rz(-pi/8) q14[1];
cx q14[0],q14[1];
cx q14[1],q[1];
rz(-pi/8) q[1];
cx q14[0],q[1];
rz(pi/8) q[1];
cx q14[1],q[1];
rz(-pi/8) q[1];
cx q14[0],q[1];
cx q[1],q[0];
rz(-pi/8) q[0];
cx q14[1],q[0];
rz(pi/8) q[0];
cx q[1],q[0];
rz(-pi/8) q[0];
cx q14[0],q[0];
rz(pi/8) q[0];
cx q[1],q[0];
rz(-pi/8) q[0];
cx q14[1],q[0];
rz(pi/8) q[0];
cx q[1],q[0];
rz(-pi/8) q[0];
cx q14[0],q[0];
h q[0];
barrier q14[0],q14[1],q[0],q[1];
measure q14[0] -> meas[0];
measure q14[1] -> meas[1];
measure q[0] -> meas[2];
measure q[1] -> meas[3];