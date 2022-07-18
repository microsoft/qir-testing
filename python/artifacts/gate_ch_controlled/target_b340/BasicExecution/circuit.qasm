OPENQASM 2.0;
include "qelib1.inc";
qreg q1[2];
qreg q[2];
creg meas[4];
rz(pi/8) q1[1];
rz(pi/8) q[0];
rz(pi/8) q[1];
cx q1[1],q[1];
rz(-pi/8) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[1],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(pi/8) q[1];
cx q1[1],q1[0];
rz(-pi/8) q1[0];
cx q1[0],q[1];
rz(pi/8) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(11*pi/4) q[1];
rz(pi/8) q[1];
cx q1[1],q1[0];
rz(pi/8) q1[0];
cx q1[0],q[1];
rz(-pi/8) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(pi/4) q[1];
rz(pi/4) q1[1];
cx q1[1],q[1];
rz(-pi/4) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[1],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(pi/4) q[1];
cx q1[1],q1[0];
rz(-pi/4) q1[0];
cx q1[0],q[1];
rz(pi/4) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(5*pi/2) q[1];
rz(pi/4) q[1];
cx q1[1],q1[0];
rz(pi/4) q1[0];
cx q1[0],q[1];
rz(-pi/4) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
ry(pi/4) q[1];
h q[1];
cx q1[1],q[1];
tdg q[1];
cx q1[0],q[1];
t q[1];
cx q1[1],q[1];
tdg q[1];
cx q1[0],q[1];
t q[1];
h q[1];
ry(-pi/4) q[1];
h q[1];
t q1[1];
cx q1[0],q1[1];
t q1[0];
tdg q1[1];
cx q1[0],q1[1];
cx q1[1],q[1];
tdg q[1];
cx q1[0],q[1];
t q[1];
cx q1[1],q[1];
tdg q[1];
cx q1[0],q[1];
t q[1];
h q[1];
rz(0.0) q[1];
t q1[1];
cx q1[0],q1[1];
t q1[0];
tdg q1[1];
cx q1[0],q1[1];
rz(0.0) q1[1];
cx q1[1],q[1];
rz(0.0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[1],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(0.0) q[1];
cx q1[1],q1[0];
rz(0.0) q1[0];
cx q1[0],q[1];
rz(0.0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(0.0) q[1];
cx q1[1],q1[0];
rz(0.0) q1[0];
cx q1[0],q[1];
rz(0.0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(pi/16) q[1];
rz(pi/16) q1[1];
cx q1[1],q[1];
rz(-pi/16) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[1],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(pi/16) q[1];
cx q1[1],q1[0];
rz(-pi/16) q1[0];
cx q1[0],q[1];
rz(pi/16) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(9.03207887907065) q[1];
rz(pi/16) q[1];
cx q1[1],q1[0];
rz(pi/16) q1[0];
cx q1[0],q[1];
rz(-pi/16) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
h q[1];
rz(pi/8) q[1];
rz(pi/8) q1[0];
rz(pi/8) q1[1];
cx q1[0],q1[1];
rz(-pi/8) q1[1];
cx q1[0],q1[1];
cx q1[1],q[0];
rz(-pi/8) q[0];
cx q1[0],q[0];
rz(pi/8) q[0];
cx q1[1],q[0];
rz(-pi/8) q[0];
cx q1[0],q[0];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q1[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q1[0],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q1[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q1[0],q[1];
h q[1];
rz(-pi/16) q[1];
rz(-pi/16) q1[1];
cx q1[1],q[1];
rz(pi/16) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[1],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(-pi/16) q[1];
cx q1[1],q1[0];
rz(pi/16) q1[0];
cx q1[0],q[1];
rz(-pi/16) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(9.8174770424681) q[1];
rz(-pi/16) q[1];
cx q1[1],q1[0];
rz(-pi/16) q1[0];
cx q1[0],q[1];
rz(pi/16) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(pi/4) q[1];
rz(pi/4) q1[1];
cx q1[1],q[1];
rz(-pi/4) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[1],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(pi/4) q[1];
cx q1[1],q1[0];
rz(-pi/4) q1[0];
cx q1[0],q[1];
rz(pi/4) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(5*pi/2) q[1];
rz(pi/4) q[1];
cx q1[1],q1[0];
rz(pi/4) q1[0];
cx q1[0],q[1];
rz(-pi/4) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
ry(pi/4) q[1];
h q[1];
cx q1[1],q[1];
tdg q[1];
cx q1[0],q[1];
t q[1];
cx q1[1],q[1];
tdg q[1];
cx q1[0],q[1];
t q[1];
h q[1];
ry(-pi/4) q[1];
h q[1];
t q1[1];
cx q1[0],q1[1];
t q1[0];
tdg q1[1];
cx q1[0],q1[1];
cx q1[1],q[1];
tdg q[1];
cx q1[0],q[1];
t q[1];
cx q1[1],q[1];
tdg q[1];
cx q1[0],q[1];
t q[1];
h q[1];
rz(0.0) q[1];
t q1[1];
cx q1[0],q1[1];
t q1[0];
tdg q1[1];
cx q1[0],q1[1];
rz(0.0) q1[1];
cx q1[1],q[1];
rz(0.0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[1],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(0.0) q[1];
cx q1[1],q1[0];
rz(0.0) q1[0];
cx q1[0],q[1];
rz(0.0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(0.0) q[1];
cx q1[1],q1[0];
rz(0.0) q1[0];
cx q1[0],q[1];
rz(0.0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(-pi/8) q[1];
rz(-pi/8) q1[1];
cx q1[1],q[1];
rz(pi/8) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[1],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(-pi/8) q[1];
cx q1[1],q1[0];
rz(pi/8) q1[0];
cx q1[0],q[1];
rz(-pi/8) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(13*pi/4) q[1];
rz(-pi/8) q[1];
cx q1[1],q1[0];
rz(-pi/8) q1[0];
cx q1[0],q[1];
rz(pi/8) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q1[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
barrier q1[0],q1[1],q[0],q[1];
measure q1[0] -> meas[0];
measure q1[1] -> meas[1];
measure q[0] -> meas[2];
measure q[1] -> meas[3];