%Written by Shubham Wani, Mechanical Undergrad at NIT Trichy.
%Set the mb(stands for Mass B) variable to powers of 100
%COLLIDING BLOCKS COMPUTE PI
%3BLUE1BROWN @ YOUTUBE
%Takes about 0.043737 seconds for calculations for 100000000 kg Mass B
tic
clearvars;
clear ;
clear clc;
ma = 1;
%set mb to various powers of 100
mb = 100000000;   
va(1)= double(0);
vb(1)= double(-10);
n=1;
while (true)
    %check if it is the last possible collision
    if (vb(n)>0 && va(n)<vb(n))
        break;
    end
    %Calculate new velocities after the collision
    va(n+1)=(ma*va(n)+mb*vb(n)+mb*(vb(n)-va(n)))/(ma+mb);
    va(n+1);
    vb(n+1)=(ma*va(n)+mb*vb(n)+ma*(va(n)-vb(n)))/(ma+mb);
    vb(n+1);
    n=n+1;
    %if mass A is moving towards left, invert its speed.
    if (va(n)<0)
        va(n+1)=-va(n);
        vb(n+1)=vb(n);
        n=n+1;
    end
end
%Number of collisions=n-1 as indexing starts from 1
disp(n-1);
toc