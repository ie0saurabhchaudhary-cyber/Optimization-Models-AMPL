set cabinet;

param wood{cabinet};
param labor{cabinet};
param revenue{cabinet};
param av_wood;
param av_labor;

var x{i in cabinet} integer >= 0;

maximize profit: sum{i in cabinet}x[i]*revenue[i];

s.t. wdc: sum{i in cabinet}wood[i]*x[i] <= av_wood;
s.t. lbc: sum{i in cabinet}labor[i]*x[i] <= av_labor;
