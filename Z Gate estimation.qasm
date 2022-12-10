OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];

x q[2];
barrier q[0];
barrier q[1];
barrier q[2];
h q[0];
h q[1];
cp(2*pi) q[0], q[2];
cp(pi ) q[1], q[2];
barrier q[0];
barrier q[1];
barrier q[2];
h q[0];
cp(- pi / 2) q[1], q[0];
h q[1];
swap q[0], q[1];
barrier q[0];
barrier q[1];
barrier q[2];
measure q[0] -> c[1];
measure q[1] -> c[2];

// @columns [0,1,1,1,2,2,3,4,5,5,5,6,7,8,9,10,10,10,11,12]