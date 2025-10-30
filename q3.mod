set worker;
set task;

param time{worker, task};

var x{worker, task} binary;

minimize ttime: sum{i in worker, j in task}x[i,j]*time[i,j];

s.t. wcon{i in worker}: sum{j in task}x[i,j] = 1;
s.t. tcon{j in task}: sum{i in worker}x[i,j] = 1;

