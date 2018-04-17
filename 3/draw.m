syms net y
y=((net)/(1+abs(net)));
syms y_prime
y_prime=diff(y)
subplot(2,1,1);ezplot(y,[-7,7]);title('original');
subplot(2,1,2);ezplot(y_prime,[-7,7]);title('diffrential');