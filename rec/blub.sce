figureOk = scf(0);
clf;
x=0:0.001:1
y=ones(1,1001);
y=y*5;
y(1,401:600)=zeros(1,200);
plot2d2(x,y);
a=gca();
a.data_bounds=[0,-0.2; 1.2,5.2]; // set the boundary values for the two-dimensional views
pollingx=0.05:0.1:0.95;
pollingy=[1 1 1 1 0 0 1 1 1 1];
pollingy= pollingy*5;
plot(pollingx,pollingy,'b.o');

pollingxn=[0.1 0.2 0.3 0.9 1];
pollingyn=[1 1 1 1 1];
pollingyn= pollingyn*5;
plot(pollingxn,pollingyn,'r.s');



hl=legend('signal','Abtaststellen echtzeitfähiges System','Abtaststellen nicht echtzeitfähiges System',-1);


