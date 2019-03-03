%复合梯形求积公式函数
function s=Ladder()
format long
y=@(x) 1/(1+x*x); %待积分的原函数
a=-1;   %积分上限
b=1;    %积分下限
n=20;   %需要等分的段数
h=(b-a)/n;
s=0;
for k=1:n
    xk=a+h*(k-1);
    xkk=a+h*(k);
    s=s+y(xk)+y(xkk);
end
s=h*s/2;
