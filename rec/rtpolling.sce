figureOk = scf(0);
clf;
x=0:0.001:1
y=ones(1,1001);
y=y*5;
y(1,401:600)=zeros(1,200);
plot2d2(x,y);
a=gca();
a.data_bounds=[0,-0.2; 1.2,5.2];
a.x_label.text="Zeit [s]"
a.y_label.text="Pegel [Volt]"

a.children.children(1).thickness=3;

pollingx=0.05:0.1:0.95;
pollingy=[1 1 1 1 0 0 1 1 1 1];
pollingy= pollingy*5;
plot(pollingx,pollingy,'b.o');


pollingxn=[0.1 0.2 0.3 0.9 1];
pollingyn=[1 1 1 1 1];
pollingyn= pollingyn*5;
plot(pollingxn,pollingyn,'r.s');

pcintx=[0.4 0.6];
pcinty=[5 5];
plot(pcintx,pcinty,'m-^');
a.children.children(1).polyline_style=3;
a.children.children(1).line_mode="off";
a.children.children(1).line_style=2;
a.children.children(1).mark_size=9
a.children.children(1).thickness=2;
hl=legend('Signal','Polling mit echtzeitfähigem System','Polling ohne echtzeitfähigem System','Pin-Change-Interrupt',-1);


