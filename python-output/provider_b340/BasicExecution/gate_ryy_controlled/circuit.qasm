OPENQASM 2.0;
include "qelib1.inc";
qreg q27[2];
qreg q[2];
creg meas[4];
rz(0.0) q27[1];
rz(pi/2) q[0];
cx q27[1],q[0];
rz(0.0) q[0];
rx(pi/2) q[0];
rz(7*pi/8) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
cx q27[1],q[0];
rz(0) q[0];
rx(pi/2) q[0];
rz(9*pi/8) q[0];
rx(pi/2) q[0];
rz(5*pi/2) q[0];
rz(pi/2) q[0];
cx q27[1],q27[0];
rz(0.0) q27[0];
cx q27[0],q[0];
rz(0.0) q[0];
rx(pi/2) q[0];
rz(9*pi/8) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
cx q27[0],q[0];
rz(0) q[0];
rx(pi/2) q[0];
rz(7*pi/8) q[0];
rx(pi/2) q[0];
rz(5*pi/2) q[0];
rz(pi/2) q[0];
cx q27[1],q27[0];
rz(0.0) q27[0];
cx q27[0],q[0];
rz(0.0) q[0];
rx(pi/2) q[0];
rz(7*pi/8) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
cx q27[0],q[0];
rz(0) q[0];
rx(pi/2) q[0];
rz(9*pi/8) q[0];
rx(pi/2) q[0];
rz(5*pi/2) q[0];
rz(pi/8) q[0];
rz(0.0) q27[1];
rz(pi/2) q[1];
cx q27[1],q[1];
rz(0.0) q[1];
rx(pi/2) q[1];
rz(7*pi/8) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q27[1],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(9*pi/8) q[1];
rx(pi/2) q[1];
rz(5*pi/2) q[1];
rz(pi/2) q[1];
cx q27[1],q27[0];
rz(0.0) q27[0];
cx q27[0],q[1];
rz(0.0) q[1];
rx(pi/2) q[1];
rz(9*pi/8) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q27[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(7*pi/8) q[1];
rx(pi/2) q[1];
rz(5*pi/2) q[1];
rz(pi/2) q[1];
cx q27[1],q27[0];
rz(0.0) q27[0];
cx q27[0],q[1];
rz(0.0) q[1];
rx(pi/2) q[1];
rz(7*pi/8) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q27[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(9*pi/8) q[1];
rx(pi/2) q[1];
rz(5*pi/2) q[1];
h q[1];
rz(pi/8) q[1];
rz(pi/8) q27[0];
rz(pi/8) q27[1];
cx q27[0],q27[1];
rz(-pi/8) q27[1];
cx q27[0],q27[1];
cx q27[1],q[0];
rz(-pi/8) q[0];
cx q27[0],q[0];
rz(pi/8) q[0];
cx q27[1],q[0];
rz(-pi/8) q[0];
cx q27[0],q[0];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q27[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q27[0],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q27[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(pi/8) q[0];
rz(-pi/8) q[1];
cx q27[0],q[1];
h q[1];
rz(0.785) q[1];
rz(0.785) q27[1];
cx q27[1],q[1];
rz(-0.785) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q27[1],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
rz(0.785) q[1];
cx q27[1],q27[0];
rz(-0.785) q27[0];
cx q27[0],q[1];
rz(0.785) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q27[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(7.85477796076938) q[1];
rz(0.785) q[1];
cx q27[1],q27[0];
rz(0.785) q27[0];
cx q27[0],q[1];
rz(-0.785) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q27[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(pi) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
h q[1];
rz(pi/8) q[1];
rz(pi/8) q27[0];
rz(pi/8) q27[1];
cx q27[0],q27[1];
rz(-pi/8) q27[1];
cx q27[0],q27[1];
cx q27[1],q[0];
rz(-pi/8) q[0];
cx q27[0],q[0];
rz(pi/8) q[0];
cx q27[1],q[0];
rz(-pi/8) q[0];
cx q27[0],q[0];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q27[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q27[0],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(-pi/8) q[1];
cx q27[1],q[1];
rz(pi/8) q[1];
cx q[0],q[1];
rz(pi/2) q[0];
rz(-pi/8) q[1];
cx q27[0],q[1];
h q[1];
rz(pi/2) q[1];
rz(0.0) q27[1];
cx q27[1],q[0];
rz(0.0) q[0];
rx(pi/2) q[0];
rz(9*pi/8) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
cx q27[1],q[0];
rz(0) q[0];
rx(pi/2) q[0];
rz(7*pi/8) q[0];
rx(pi/2) q[0];
rz(5*pi/2) q[0];
rz(pi/2) q[0];
cx q27[1],q27[0];
rz(0.0) q27[0];
cx q27[0],q[0];
rz(0.0) q[0];
rx(pi/2) q[0];
rz(7*pi/8) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
cx q27[0],q[0];
rz(0) q[0];
rx(pi/2) q[0];
rz(9*pi/8) q[0];
rx(pi/2) q[0];
rz(5*pi/2) q[0];
rz(pi/2) q[0];
cx q27[1],q27[0];
rz(0.0) q27[0];
cx q27[0],q[0];
rz(0.0) q[0];
rx(pi/2) q[0];
rz(9*pi/8) q[0];
rx(pi/2) q[0];
rz(3*pi) q[0];
cx q27[0],q[0];
rz(0) q[0];
rx(pi/2) q[0];
rz(7*pi/8) q[0];
rx(pi/2) q[0];
rz(5*pi/2) q[0];
rz(0.0) q27[1];
cx q27[1],q[1];
rz(0.0) q[1];
rx(pi/2) q[1];
rz(9*pi/8) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q27[1],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(7*pi/8) q[1];
rx(pi/2) q[1];
rz(5*pi/2) q[1];
rz(pi/2) q[1];
cx q27[1],q27[0];
rz(0.0) q27[0];
cx q27[0],q[1];
rz(0.0) q[1];
rx(pi/2) q[1];
rz(7*pi/8) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q27[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(9*pi/8) q[1];
rx(pi/2) q[1];
rz(5*pi/2) q[1];
rz(pi/2) q[1];
cx q27[1],q27[0];
rz(0.0) q27[0];
cx q27[0],q[1];
rz(0.0) q[1];
rx(pi/2) q[1];
rz(9*pi/8) q[1];
rx(pi/2) q[1];
rz(3*pi) q[1];
cx q27[0],q[1];
rz(0) q[1];
rx(pi/2) q[1];
rz(7*pi/8) q[1];
rx(pi/2) q[1];
rz(5*pi/2) q[1];
rz(2.35659265358979) q27[0];
cx q27[0],q27[1];
rz(-2.3565926535898) q27[1];
cx q27[0],q27[1];
rz(2.35659265358979) q27[1];
barrier q27[0],q27[1],q[0],q[1];
measure q27[0] -> meas[0];
measure q27[1] -> meas[1];
measure q[0] -> meas[2];
measure q[1] -> meas[3];
