X=[0.1 1.2 1 ; 0.7 1.8 1 ; 0.8 1.6 1 ; 0.8 0.6 1 ; 1 0.8 1 ; 0.3 0.5 1 ; 0 0.2 1 ; -0.3 0.8 1 ; -0.5 -1.5 1 ; -1.5 -1.3 1];
desire=[1 0 ; 1 0 ; 1 0 ; 0 0 ; 0 0 ; 1 1 ; 1 1 ; 1 1 ; 0 1 ; 0 1 ];
eta = 0.8;
OW=[-5.1679 7.4033 -0.8295 ; -5.1534 -4.6383 4.0994];
F=OW
for(j=1:1:1)
s=[];
k=[];
for(i=1:1:10)
[ o , e , NW] = train( OW , transpose(X(i,:,:)) , eta , transpose(desire(i,:,:)) );
s=[s;e(1,1) e(2,1)];
k=[k;o(1,1) o(2,1)];
OW=NW;
end
NW
s
k
E=0.5.*trace(s*transpose(s))
disp('=============================');
end