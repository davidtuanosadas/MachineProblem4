function a=machprob4(h,v,angle,ax,ay)
if ay==0
    error('ay cannot be = 0')
end
t=max(roots([(ay/2),v*sind(angle),h]));
a=0:0.01:t+1;
b=zeros(1,length(a)+1);
c=zeros(1,length(a)+1);
t=0.01;
b(1)=0;
c(1)=h;
for i=1:length(a)-1
    tx=((ax*(t^2))/2)+(v*cosd(angle)*t);
    ty=((ay*(t^2))/2)+(v*sind(angle)*t)+h;
    b(i+1)=tx;
    c(i+1)=ty;
    t=t+0.01;
end
b(length(a)+1)=(ax/2)*t^2+v*cosd(angle)*0.01;
c(length(a)+1)=0;
plot(b,c,'-')
xlim([0 max(b)+1])
ylim([0 max(c)+1])
grid on
xlabel('RANGE')
ylabel('HEIGHT')
title('Projectile Motion')
end
    
