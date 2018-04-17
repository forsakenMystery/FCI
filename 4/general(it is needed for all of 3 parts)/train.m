function [ o , e , NW] = train( OW , X , eta , desire )
net=OW*X;
o=hardlim(net);
e=desire - o;
NW=OW+eta.*e*transpose(X);
end

