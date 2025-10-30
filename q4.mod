set material;

param cost{material};
param nickel{material};
param chromium{material};
param tam;
param tnic;
param tchr;

var x{material} >= 0;

minimize tcost: sum{i in material}cost[i]*x[i];

s.t. nic:
	sum{i in material}x[i]*nickel[i] >= tnic;
	
s.t. chr:
	sum{i in material}x[i]*chromium[i] >= tchr;
	
s.t. amt:
	sum{i in material}x[i] = tam;