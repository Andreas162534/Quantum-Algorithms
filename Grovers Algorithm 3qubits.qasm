OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];

h q[0];
h q[1];
h q[2];
x q[3];
h q[3];
barrier q[0];
barrier q[1];
barrier q[2];
barrier q[3];
cz q[1], q[2];
barrier q[0];
barrier q[1];
barrier q[2];
barrier q[3];
h q[0];
h q[1];
h q[2];
x q[0];
x q[1];
x q[2];
h q[2];
ccx q[0], q[1], q[2];
h q[2];
x q[0];
x q[1];
x q[2];
h q[0];
h q[1];
h q[2];

// @columns [0,0,0,0,1,2,2,2,2,3,5,5,5,5,6,6,6,7,7,7,8,9,10,11,11,11,12,12,12]