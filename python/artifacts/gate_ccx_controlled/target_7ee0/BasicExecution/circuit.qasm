OPENQASM 2.0;
include "qelib1.inc";
qreg q0[2];
qreg q[3];
creg meas[5];
rz(pi/4) q0[1];
rz(pi/8) q[0];
rz(pi/8) q[1];
rz(pi/4) q[2];
cx q0[1],q[2];
rz(-pi/4) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[1],q[2];
cx q0[1],q0[0];
rz(-pi/4) q0[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(pi/4) q[2];
cx q0[0],q[2];
rz(pi/4) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
cx q0[1],q0[0];
rz(pi/4) q0[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(5*pi/2) q[2];
rz(pi/4) q[2];
cx q0[0],q[2];
rz(-pi/4) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
ry(pi/4) q[2];
h q[2];
cx q0[1],q[2];
tdg q[2];
cx q0[0],q[2];
t q[2];
cx q0[1],q[2];
t q0[1];
tdg q[2];
cx q0[0],q[2];
cx q0[0],q0[1];
t q0[0];
tdg q0[1];
cx q0[0],q0[1];
t q[2];
h q[2];
ry(-pi/4) q[2];
h q[2];
cx q0[1],q[2];
tdg q[2];
cx q0[0],q[2];
t q[2];
cx q0[1],q[2];
t q0[1];
tdg q[2];
cx q0[0],q[2];
cx q0[0],q0[1];
t q0[0];
tdg q0[1];
cx q0[0],q0[1];
rz(0.0) q0[1];
t q[2];
h q[2];
rz(0.0) q[2];
cx q0[1],q[2];
rz(0.0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[1],q[2];
cx q0[1],q0[0];
rz(0.0) q0[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(0.0) q[2];
cx q0[0],q[2];
rz(0.0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
cx q0[1],q0[0];
rz(0.0) q0[0];
rz(pi/8) q0[1];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(0.0) q[2];
cx q0[0],q[2];
rz(0.0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
rz(pi/8) q0[0];
cx q0[0],q0[1];
rz(-pi/8) q0[1];
cx q0[0],q0[1];
cx q0[1],q[1];
rz(-pi/8) q[1];
cx q0[0],q[1];
rz(pi/8) q[1];
cx q0[1],q[1];
rz(-pi/8) q[1];
cx q0[0],q[1];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
h q[2];
rz(pi/8) q[2];
cx q[1],q[2];
rz(-pi/8) q[2];
cx q0[1],q[2];
rz(pi/8) q[2];
cx q[1],q[2];
rz(-pi/8) q[2];
cx q0[0],q[2];
rz(pi/8) q[2];
cx q[1],q[2];
rz(-pi/8) q[2];
cx q0[1],q[2];
rz(-pi/16) q0[1];
rz(pi/8) q[2];
cx q[1],q[2];
rz(pi/8) q[1];
rz(-pi/8) q[2];
cx q0[0],q[2];
h q[2];
rz(-pi/16) q[2];
cx q0[1],q[2];
rz(pi/16) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[1],q[2];
cx q0[1],q0[0];
rz(pi/16) q0[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(-pi/16) q[2];
cx q0[0],q[2];
rz(-pi/16) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
cx q0[1],q0[0];
rz(-pi/16) q0[0];
rz(pi/8) q0[1];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(9.8174770424681) q[2];
rz(-pi/16) q[2];
cx q0[0],q[2];
rz(pi/16) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
rz(pi/8) q0[0];
cx q0[0],q0[1];
rz(-pi/8) q0[1];
cx q0[0],q0[1];
cx q0[1],q[0];
rz(-pi/8) q[0];
cx q0[0],q[0];
rz(pi/8) q[0];
cx q0[1],q[0];
rz(-pi/8) q[0];
cx q0[0],q[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
h q[2];
rz(pi/8) q[2];
cx q[0],q[2];
rz(-pi/8) q[2];
cx q0[1],q[2];
rz(pi/8) q[2];
cx q[0],q[2];
rz(-pi/8) q[2];
cx q0[0],q[2];
rz(pi/8) q[2];
cx q[0],q[2];
rz(-pi/8) q[2];
cx q0[1],q[2];
rz(pi/16) q0[1];
rz(pi/8) q[2];
cx q[0],q[2];
rz(pi/8) q[0];
rz(-pi/8) q[2];
cx q0[0],q[2];
h q[2];
rz(pi/16) q[2];
cx q0[1],q[2];
rz(-pi/16) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[1],q[2];
cx q0[1],q0[0];
rz(-pi/16) q0[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(pi/16) q[2];
cx q0[0],q[2];
rz(pi/16) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
cx q0[1],q0[0];
rz(pi/16) q0[0];
rz(pi/8) q0[1];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(9.03207887907065) q[2];
rz(pi/16) q[2];
cx q0[0],q[2];
rz(-pi/16) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
rz(pi/8) q0[0];
cx q0[0],q0[1];
rz(-pi/8) q0[1];
cx q0[0],q0[1];
cx q0[1],q[1];
rz(-pi/8) q[1];
cx q0[0],q[1];
rz(pi/8) q[1];
cx q0[1],q[1];
rz(-pi/8) q[1];
cx q0[0],q[1];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
h q[2];
rz(pi/8) q[2];
cx q[1],q[2];
rz(-pi/8) q[2];
cx q0[1],q[2];
rz(pi/8) q[2];
cx q[1],q[2];
rz(-pi/8) q[2];
cx q0[0],q[2];
rz(pi/8) q[2];
cx q[1],q[2];
rz(-pi/8) q[2];
cx q0[1],q[2];
rz(pi/16) q0[1];
rz(pi/8) q[2];
cx q[1],q[2];
rz(pi/16) q[1];
cx q0[1],q[1];
rz(-pi/16) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q0[1],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(pi/16) q[1];
rz(-pi/8) q[2];
cx q0[0],q[2];
cx q0[1],q0[0];
rz(-pi/16) q0[0];
cx q0[0],q[1];
rz(pi/16) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q0[0],q[1];
cx q0[1],q0[0];
rz(pi/16) q0[0];
rz(-pi/16) q0[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(9.03207887907065) q[1];
rz(pi/16) q[1];
cx q0[0],q[1];
rz(-pi/16) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q0[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
h q[1];
rz(pi/8) q[1];
h q[2];
rz(-pi/16) q[2];
cx q0[1],q[2];
rz(pi/16) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[1],q[2];
cx q0[1],q0[0];
rz(pi/16) q0[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(-pi/16) q[2];
cx q0[0],q[2];
rz(-pi/16) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
cx q0[1],q0[0];
rz(-pi/16) q0[0];
rz(pi/8) q0[1];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(9.8174770424681) q[2];
rz(-pi/16) q[2];
cx q0[0],q[2];
rz(pi/16) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
rz(pi/8) q0[0];
cx q0[0],q0[1];
rz(-pi/8) q0[1];
cx q0[0],q0[1];
cx q0[1],q[0];
rz(-pi/8) q[0];
cx q0[0],q[0];
rz(pi/8) q[0];
cx q0[1],q[0];
rz(-pi/8) q[0];
cx q0[0],q[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
h q[2];
rz(pi/8) q[2];
cx q[0],q[2];
rz(-pi/8) q[2];
cx q0[1],q[2];
rz(pi/8) q[2];
cx q[0],q[2];
rz(-pi/8) q[2];
cx q0[0],q[2];
rz(pi/8) q[2];
cx q[0],q[2];
rz(-pi/8) q[2];
cx q0[1],q[2];
rz(pi/8) q0[1];
rz(pi/8) q[2];
cx q[0],q[2];
rz(pi/8) q[0];
rz(-pi/8) q[2];
cx q0[0],q[2];
rz(pi/8) q0[0];
cx q0[0],q0[1];
rz(-pi/8) q0[1];
cx q0[0],q0[1];
cx q0[1],q[0];
rz(-pi/8) q[0];
cx q0[0],q[0];
rz(pi/8) q[0];
cx q0[1],q[0];
rz(-pi/8) q[0];
cx q0[0],q[0];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q0[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q0[0],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q0[1],q[1];
rz(pi/16) q0[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(pi/16) q[0];
cx q0[1],q[0];
rz(-pi/16) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
cx q0[1],q[0];
rz(0) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
rz(pi/16) q[0];
rz(-pi/8) q[1];
cx q0[0],q[1];
cx q0[1],q0[0];
rz(-pi/16) q0[0];
cx q0[0],q[0];
rz(pi/16) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
cx q0[0],q[0];
cx q0[1],q0[0];
rz(pi/16) q0[0];
rz(-pi/16) q0[1];
rz(0) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(9.03207887907065) q[0];
rz(pi/16) q[0];
cx q0[0],q[0];
rz(-pi/16) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
cx q0[0],q[0];
rz(0) q[0];
rx(pi/2) q[0];
rz(pi) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
rz(pi/8) q[0];
h q[1];
rz(-pi/16) q[1];
cx q0[1],q[1];
rz(pi/16) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q0[1],q[1];
cx q0[1],q0[0];
rz(pi/16) q0[0];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(-pi/16) q[1];
cx q0[0],q[1];
rz(-pi/16) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q0[0],q[1];
cx q0[1],q0[0];
rz(-pi/16) q0[0];
rz(pi/8) q0[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(9.8174770424681) q[1];
rz(-pi/16) q[1];
cx q0[0],q[1];
rz(pi/16) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q0[0],q[1];
rz(pi/8) q0[0];
cx q0[0],q0[1];
rz(-pi/8) q0[1];
cx q0[0],q0[1];
cx q0[1],q[0];
rz(-pi/8) q[0];
cx q0[0],q[0];
rz(pi/8) q[0];
cx q0[1],q[0];
rz(-pi/8) q[0];
cx q0[0],q[0];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
h q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q0[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q0[0],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q0[1],q[1];
rz(pi/16) q0[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q0[0],q[1];
h q[1];
h q[2];
rz(pi/16) q[2];
cx q0[1],q[2];
rz(-pi/16) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[1],q[2];
cx q0[1],q0[0];
rz(-pi/16) q0[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(pi/16) q[2];
cx q0[0],q[2];
rz(pi/16) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
cx q0[1],q0[0];
rz(pi/16) q0[0];
rz(pi/4) q0[1];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(9.03207887907065) q[2];
rz(pi/16) q[2];
cx q0[0],q[2];
rz(-pi/16) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(pi/4) q[2];
cx q0[1],q[2];
rz(-pi/4) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[1],q[2];
cx q0[1],q0[0];
rz(-pi/4) q0[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(pi/4) q[2];
cx q0[0],q[2];
rz(pi/4) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
cx q0[1],q0[0];
rz(pi/4) q0[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(5*pi/2) q[2];
rz(pi/4) q[2];
cx q0[0],q[2];
rz(-pi/4) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
ry(pi/4) q[2];
h q[2];
cx q0[1],q[2];
tdg q[2];
cx q0[0],q[2];
t q[2];
cx q0[1],q[2];
t q0[1];
tdg q[2];
cx q0[0],q[2];
cx q0[0],q0[1];
t q0[0];
tdg q0[1];
cx q0[0],q0[1];
t q[2];
h q[2];
ry(-pi/4) q[2];
h q[2];
cx q0[1],q[2];
tdg q[2];
cx q0[0],q[2];
t q[2];
cx q0[1],q[2];
t q0[1];
tdg q[2];
cx q0[0],q[2];
cx q0[0],q0[1];
t q0[0];
tdg q0[1];
cx q0[0],q0[1];
rz(0.0) q0[1];
t q[2];
h q[2];
rz(0.0) q[2];
cx q0[1],q[2];
rz(0.0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[1],q[2];
cx q0[1],q0[0];
rz(0.0) q0[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(0.0) q[2];
cx q0[0],q[2];
rz(0.0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
cx q0[1],q0[0];
rz(0.0) q0[0];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
rz(0.0) q[2];
cx q0[0],q[2];
rz(0.0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
cx q0[0],q[2];
rz(0) q[2];
rx(pi/2) q[2];
rz(pi) q[2];
rx(pi/2) q[2];
rz(3*pi) q[2];
barrier q0[0],q0[1],q[0],q[1],q[2];
measure q0[0] -> meas[0];
measure q0[1] -> meas[1];
measure q[0] -> meas[2];
measure q[1] -> meas[3];
measure q[2] -> meas[4];
