set days;

param demand{days};

var x{days} integer >= 0;

minimize nurse:sum{i in days}x[i];

s.t. dem{j in days}:sum{i in days:((j-i+7)mod7)<5}x[i] >= demand[j];
