%复合辛普森求积公式函数
%参数说明：a为积分下限，b为积分上限，n为分段数
function s=simpson(a,b,n)
format long
h=(b-a)/n;       %步长
x=a:h:b;         %x的分段点
y=@(x) 1/(1+x*x);  %被积函数
s=0;
for k=1:n
    s=s+y(x(k))+4*y(x(k)+0.5*h)+y(x(k+1));  %直接使用课本p107公式（3.4）进行计算即可
end
s=h/6*s;
end