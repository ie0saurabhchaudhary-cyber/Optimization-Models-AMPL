set factories;
set warehouses;

param supply{factories};
param demand{warehouses};
param cost{factories, warehouses};

var x{factories, warehouses} >= 0;

minimize tcost:
    sum{i in factories, j in warehouses} cost[i,j] * x[i,j];

s.t. supply_limit{i in factories}:
    sum{j in warehouses} x[i,j] <= supply[i];

s.t. demand_satisfied{j in warehouses}:
    sum{i in factories} x[i,j] = demand[j];
