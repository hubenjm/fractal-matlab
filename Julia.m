function Intensity = Julia(c, R, n, Nmax)

%c = -0.12256 + 0.74486*1i
x = linspace(-R, R, n);
Intensity = zeros(n, n);

for j1=1:n
    for j2=1:n
        z = x(j1) + 1i*x(j2);
        iter = 0;
        while (iter < Nmax) && (abs(z) <= R)
            z = z*z + c;
            iter = iter + 1;
        end
        Intensity(j1,j2) = iter;
    end
end
[Y,X] = meshgrid(x,x);
surf(X,Y,Intensity,'EdgeColor','none','LineStyle','none','FaceLighting','phong');
colormap('jet');
xlabel('x');
ylabel('y');

end