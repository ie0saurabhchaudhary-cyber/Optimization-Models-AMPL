set factory;
set warehouse;

param supply{factory};
param demand{warehouse};
param cost{factory, warehouse};

var x{factory, warehouse} integer >= 0;

minimize transcost: sum{i in factory, j in warehouse}cost[i,j]*x[i,j];

s.t. supcon{i in factory}:
	sum{j in warehouse}x[i,j] <= supply[i];
	
s.t. demcon{j in warehouse}:
	sum{i in factory}x[i,j] = demand[j];
		