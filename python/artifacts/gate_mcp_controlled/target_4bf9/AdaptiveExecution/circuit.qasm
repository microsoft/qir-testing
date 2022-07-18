OPENQASM 2.0;
include "qelib1.inc";
qreg q18[2];
qreg q[5];
creg meas[7];
rz(0.0490625) q18[1];
h q[0];
rz(pi/8) q[0];
h q[1];
rz(pi/8) q[1];
h q[2];
rz(pi/8) q[2];
cx q18[1],q[3];
rz(-0.0490625) q[3];
cx q18[1],q[3];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[3];
cx q18[0],q[3];
rz(0.0490625) q[3];
cx q18[0],q[3];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[3];
cx q18[0],q[3];
rz(-0.0490625) q[3];
cx q18[0],q[3];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
rz(0.0490625) q[3];
rz(pi/8) q[3];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
rz(pi/8) q[3];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
h q[4];
rz(pi/8) q[4];
cx q[3],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[3],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[3],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(-0.0490625) q18[1];
rz(pi/8) q[4];
cx q[3],q[4];
rz(pi/8) q[3];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
rz(pi/8) q[3];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[3],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[3],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[3],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[3],q[4];
rz(pi/8) q[3];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
rz(pi/8) q[3];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
cx q[3],q[2];
rz(-pi/8) q[2];
cx q18[1],q[2];
rz(pi/8) q[2];
cx q[3],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(pi/8) q[2];
cx q[3],q[2];
rz(-pi/8) q[2];
cx q18[1],q[2];
rz(-0.0490625) q18[1];
rz(pi/8) q[2];
cx q[3],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
h q[2];
cx q18[1],q[2];
rz(0.0490625) q[2];
cx q18[1],q[2];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[2];
cx q18[0],q[2];
rz(-0.0490625) q[2];
cx q18[0],q[2];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q18[1];
rz(0.0490625) q[2];
cx q18[0],q[2];
rz(0.0490625) q[2];
cx q18[0],q[2];
rz(-0.0490625) q[2];
rz(pi/8) q[2];
rz(pi/8) q[3];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(pi/8) q[2];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[2],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[2],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[2],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(0.0490625) q18[1];
rz(pi/8) q[4];
cx q[2],q[4];
rz(pi/8) q[2];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(pi/8) q[2];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[2],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[2],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[2],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[2],q[4];
h q[2];
rz(pi/8) q[2];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
rz(pi/8) q[3];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
cx q[3],q[2];
rz(-pi/8) q[2];
cx q18[1],q[2];
rz(pi/8) q[2];
cx q[3],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(pi/8) q[2];
cx q[3],q[2];
rz(-pi/8) q[2];
cx q18[1],q[2];
rz(0.0490625) q18[1];
rz(pi/8) q[2];
cx q[3],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
h q[2];
cx q18[1],q[2];
rz(-0.0490625) q[2];
cx q18[1],q[2];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[2];
cx q18[0],q[2];
rz(0.0490625) q[2];
cx q18[0],q[2];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q18[1];
rz(-0.0490625) q[2];
cx q18[0],q[2];
rz(-0.0490625) q[2];
cx q18[0],q[2];
rz(0.0490625) q[2];
rz(pi/8) q[2];
rz(pi/8) q[3];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(pi/8) q[2];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[2],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[2],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[2],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(-0.0490625) q18[1];
rz(pi/8) q[4];
cx q[2],q[4];
rz(pi/8) q[2];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(pi/8) q[2];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[2],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[2],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[2],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[2],q[4];
rz(pi/8) q[2];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(pi/8) q[2];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
cx q[2],q[1];
rz(-pi/8) q[1];
cx q18[1],q[1];
rz(pi/8) q[1];
cx q[2],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q[2],q[1];
rz(-pi/8) q[1];
cx q18[1],q[1];
rz(-0.0490625) q18[1];
rz(pi/8) q[1];
cx q[2],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
h q[1];
cx q18[1],q[1];
rz(0.0490625) q[1];
cx q18[1],q[1];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[1];
cx q18[0],q[1];
rz(-0.0490625) q[1];
cx q18[0],q[1];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q18[1];
rz(0.0490625) q[1];
cx q18[0],q[1];
rz(0.0490625) q[1];
cx q18[0],q[1];
rz(-0.0490625) q[1];
rz(pi/8) q[1];
rz(pi/8) q[2];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(0.0490625) q18[1];
rz(pi/8) q[4];
cx q[1],q[4];
rz(pi/8) q[1];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[1],q[4];
h q[1];
rz(pi/8) q[1];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
rz(pi/8) q[3];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
cx q[3],q[1];
rz(-pi/8) q[1];
cx q18[1],q[1];
rz(pi/8) q[1];
cx q[3],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q[3],q[1];
rz(-pi/8) q[1];
cx q18[1],q[1];
rz(0.0490625) q18[1];
rz(pi/8) q[1];
cx q[3],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
h q[1];
cx q18[1],q[1];
rz(-0.0490625) q[1];
cx q18[1],q[1];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[1];
cx q18[0],q[1];
rz(0.0490625) q[1];
cx q18[0],q[1];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q18[1];
rz(-0.0490625) q[1];
cx q18[0],q[1];
rz(-0.0490625) q[1];
cx q18[0],q[1];
rz(0.0490625) q[1];
rz(pi/8) q[1];
rz(pi/8) q[3];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(-0.0490625) q18[1];
rz(pi/8) q[4];
cx q[1],q[4];
rz(pi/8) q[1];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[1],q[4];
h q[1];
rz(pi/8) q[1];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(pi/8) q[2];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
cx q[2],q[1];
rz(-pi/8) q[1];
cx q18[1],q[1];
rz(pi/8) q[1];
cx q[2],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q[2],q[1];
rz(-pi/8) q[1];
cx q18[1],q[1];
rz(-0.0490625) q18[1];
rz(pi/8) q[1];
cx q[2],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
h q[1];
cx q18[1],q[1];
rz(0.0490625) q[1];
cx q18[1],q[1];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[1];
cx q18[0],q[1];
rz(-0.0490625) q[1];
cx q18[0],q[1];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q18[1];
rz(0.0490625) q[1];
cx q18[0],q[1];
rz(0.0490625) q[1];
cx q18[0],q[1];
rz(-0.0490625) q[1];
rz(pi/8) q[1];
rz(pi/8) q[2];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(0.0490625) q18[1];
rz(pi/8) q[4];
cx q[1],q[4];
rz(pi/8) q[1];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[1],q[4];
h q[1];
rz(pi/8) q[1];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
rz(pi/8) q[3];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
cx q[3],q[1];
rz(-pi/8) q[1];
cx q18[1],q[1];
rz(pi/8) q[1];
cx q[3],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q[3],q[1];
rz(-pi/8) q[1];
cx q18[1],q[1];
rz(0.0490625) q18[1];
rz(pi/8) q[1];
cx q[3],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
h q[1];
cx q18[1],q[1];
rz(-0.0490625) q[1];
cx q18[1],q[1];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[1];
cx q18[0],q[1];
rz(0.0490625) q[1];
cx q18[0],q[1];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q18[1];
rz(-0.0490625) q[1];
cx q18[0],q[1];
rz(-0.0490625) q[1];
cx q18[0],q[1];
rz(0.0490625) q[1];
rz(pi/8) q[1];
rz(pi/8) q[3];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(-0.0490625) q18[1];
rz(pi/8) q[4];
cx q[1],q[4];
rz(pi/8) q[1];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[1],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[1],q[4];
rz(pi/8) q[1];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
cx q[1],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(pi/8) q[0];
cx q[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q[1],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(-0.0490625) q18[1];
rz(pi/8) q[0];
cx q[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
h q[0];
cx q18[1],q[0];
rz(0.0490625) q[0];
cx q18[1],q[0];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[0];
cx q18[0],q[0];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q18[1];
rz(0.0490625) q[0];
cx q18[0],q[0];
rz(0.0490625) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[0];
rz(pi/8) q[0];
rz(pi/8) q[1];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(0.0490625) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
h q[0];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
rz(pi/8) q[3];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(pi/8) q[0];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(0.0490625) q18[1];
rz(pi/8) q[0];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
h q[0];
cx q18[1],q[0];
rz(-0.0490625) q[0];
cx q18[1],q[0];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[0];
cx q18[0],q[0];
rz(0.0490625) q[0];
cx q18[0],q[0];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q18[1];
rz(-0.0490625) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[0];
cx q18[0],q[0];
rz(0.0490625) q[0];
rz(pi/8) q[0];
rz(pi/8) q[3];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(-0.0490625) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
h q[0];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(pi/8) q[2];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
cx q[2],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(pi/8) q[0];
cx q[2],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q[2],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(-0.0490625) q18[1];
rz(pi/8) q[0];
cx q[2],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
h q[0];
cx q18[1],q[0];
rz(0.0490625) q[0];
cx q18[1],q[0];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[0];
cx q18[0],q[0];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q18[1];
rz(0.0490625) q[0];
cx q18[0],q[0];
rz(0.0490625) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[0];
rz(pi/8) q[0];
rz(pi/8) q[2];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(0.0490625) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
h q[0];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
rz(pi/8) q[3];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(pi/8) q[0];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(0.0490625) q18[1];
rz(pi/8) q[0];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
h q[0];
cx q18[1],q[0];
rz(-0.0490625) q[0];
cx q18[1],q[0];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[0];
cx q18[0],q[0];
rz(0.0490625) q[0];
cx q18[0],q[0];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q18[1];
rz(-0.0490625) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[0];
cx q18[0],q[0];
rz(0.0490625) q[0];
rz(pi/8) q[0];
rz(pi/8) q[3];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(-0.0490625) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
h q[0];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
rz(pi/8) q[1];
cx q18[1],q[1];
rz(-pi/8) q[1];
cx q18[0],q[1];
cx q[1],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(pi/8) q[0];
cx q[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q[1],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(-0.0490625) q18[1];
rz(pi/8) q[0];
cx q[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
h q[0];
cx q18[1],q[0];
rz(0.0490625) q[0];
cx q18[1],q[0];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[0];
cx q18[0],q[0];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q18[1];
rz(0.0490625) q[0];
cx q18[0],q[0];
rz(0.0490625) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[0];
rz(pi/8) q[0];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(0.0490625) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
h q[0];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
rz(pi/8) q[3];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(pi/8) q[0];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(0.0490625) q18[1];
rz(pi/8) q[0];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
h q[0];
cx q18[1],q[0];
rz(-0.0490625) q[0];
cx q18[1],q[0];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[0];
cx q18[0],q[0];
rz(0.0490625) q[0];
cx q18[0],q[0];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q18[1];
rz(-0.0490625) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[0];
cx q18[0],q[0];
rz(0.0490625) q[0];
rz(pi/8) q[0];
rz(pi/8) q[3];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(-0.0490625) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
h q[0];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
rz(pi/8) q[2];
cx q18[1],q[2];
rz(-pi/8) q[2];
cx q18[0],q[2];
cx q[2],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(pi/8) q[0];
cx q[2],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q[2],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(-0.0490625) q18[1];
rz(pi/8) q[0];
cx q[2],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
h q[0];
cx q18[1],q[0];
rz(0.0490625) q[0];
cx q18[1],q[0];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[0];
cx q18[0],q[0];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q18[1];
rz(0.0490625) q[0];
cx q18[0],q[0];
rz(0.0490625) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[0];
rz(pi/8) q[0];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(0.0490625) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(pi/8) q18[1];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
h q[0];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
rz(pi/8) q[3];
cx q18[1],q[3];
rz(-pi/8) q[3];
cx q18[0],q[3];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(pi/8) q[0];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[1],q[0];
rz(0.0490625) q18[1];
rz(pi/8) q[0];
cx q[3],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
h q[0];
cx q18[1],q[0];
rz(-0.0490625) q[0];
cx q18[1],q[0];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[0];
cx q18[0],q[0];
rz(0.0490625) q[0];
cx q18[0],q[0];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q18[1];
rz(-0.0490625) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[0];
cx q18[0],q[0];
rz(0.0490625) q[0];
rz(pi/8) q[0];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(-0.0490625) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
rz(pi/8) q[0];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(pi/8) q18[1];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(pi/8) q18[0];
cx q18[0],q18[1];
rz(-pi/8) q18[1];
cx q18[0],q18[1];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(pi/8) q[0];
cx q18[1],q[0];
rz(-pi/8) q[0];
cx q18[0],q[0];
rz(-0.0490625) q[4];
h q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[1],q[4];
rz(0.0490625) q18[1];
rz(pi/8) q[4];
cx q[0],q[4];
rz(-pi/8) q[4];
cx q18[0],q[4];
h q[4];
cx q18[1],q[4];
rz(-0.0490625) q[4];
cx q18[1],q[4];
cx q18[1],q18[0];
rz(-0.0490625) q18[0];
rz(0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
cx q18[0],q[4];
cx q18[1],q18[0];
rz(0.0490625) q18[0];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(-0.0490625) q[4];
cx q18[0],q[4];
rz(0.0490625) q[4];
barrier q18[0],q18[1],q[0],q[1],q[2],q[3],q[4];
measure q18[0] -> meas[0];
measure q18[1] -> meas[1];
measure q[0] -> meas[2];
measure q[1] -> meas[3];
measure q[2] -> meas[4];
measure q[3] -> meas[5];
measure q[4] -> meas[6];