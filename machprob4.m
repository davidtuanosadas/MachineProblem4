function x=machprob4(h,vo,theta,ax,ay)
if ay==0
    error('ay cannot be = 0')
else
vox=vo*cosd(theta);
voy=vo*sind(theta);    
t=max(roots([(ay/2),voy,h]));
V=sqrt(vox^2+voy^2);
x=0:0.01:t+1;
y=zeros(1,length(x)+1);
z=y;
t=0.01;
y(1)=0;
z(1)=h;
end
for i=1:length(x)-1
    tx=((ax*(t^2))/2)+(vox*t);
    ty=((ay*(t^2))/2)+(voy*t)+h;
    y(i+1)=tx;
    z(i+1)=ty;
     t=t+0.01;
end
y(length(x)+1)=(ax/2)*t^2+vox*0.01;
z(length(x)+1)=0;
plot(y,z,'-')
grid on
xlim([0 max(y)+1])
ylim([0 max(z)+1])
xlabel('RANGE')
ylabel('HEIGHT')
title('Projectile Motion')
end
    
