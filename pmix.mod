set products;
set machines;

param profit{products};
param time{machines, products};
param capacity{machines};

var x{products} integer >=0;

maximize tprofit: 
	sum{j in products}x[j]*profit[j];
	
s.t. timecon{i in machines}: 
	sum{j in products}time[i,j]*x[j] <= capacity[i];	
		