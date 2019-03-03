%埃尔米特插值多项式函数，已知数据点的x坐标向量:x，已知数据点的y 坐标向量:y，已知数据点的导数向量:y_1，求得的Hermite插值多项式或x0处的插值:f
function f = Hermite(x,y,y_1,x0)
syms t;
f = 0.0;
if(length(x) == length(y))
    if(length(y) == length(y_1))
        n = length(x);
    else
        disp('有维数不相等现象！');
        return;
    end
else
    disp('有维数不相等现象！');
    return;
end
for i=1:n
    h = 1.0;
    a = 0.0;
    %%计算hi和ai
    for j=1:n
        if( j ~= i)
            h = h*(t-x(j))^2/((x(i)-x(j))^2);
            a = a + 1/(x(i)-x(j));
        end
    end  
    f = f + h*((x(i)-t)*(2*a*y(i)-y_1(i))+y(i));
    if(i==n)
        if(nargin == 4)
            f = subs(f,'t',x0);
        else
            f = vpa(f,6);
        end
    end
end
