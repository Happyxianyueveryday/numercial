%�������ز�ֵ����ʽ��������֪���ݵ��x��������:x����֪���ݵ��y ��������:y����֪���ݵ�ĵ�������:y_1����õ�Hermite��ֵ����ʽ��x0���Ĳ�ֵ:f
function f = Hermite(x,y,y_1,x0)
syms t;
f = 0.0;
if(length(x) == length(y))
    if(length(y) == length(y_1))
        n = length(x);
    else
        disp('��ά�����������');
        return;
    end
else
    disp('��ά�����������');
    return;
end
for i=1:n
    h = 1.0;
    a = 0.0;
    %%����hi��ai
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