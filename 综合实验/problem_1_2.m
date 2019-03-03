%本题的方法和题1.1类似，只需要先计算切比雪夫多项式的零点，然后将该零点作为插值点进行拉格朗日插值即可
%part 1:计算11次切比雪夫多项式的零点
x=0:11:0;     %切比雪夫多项式的零点可以直接由课本p64页的公式进行计算
pos=1;
for i=0:10
    x(pos)=5*cos(((2*i+1)/22)*pi);    %这里直接使用了课本p64页的（2.15）下面的一个公式
    pos=pos+1;
end
disp(x)

%part 2:进行拉格朗日插值
f=@(x) 1/(1+x*x)    %待插值函数f
y=0:101:0;
for i=1:11
    y(i)=f(x(i));
end
x0=x
y0=Lagrange(x,y,x0)

%part 3:作出拉格朗日插值多项式和原函数的图像
%先绘制原函数f的图像
fplot(f,[-10,10])
hold on 
%再利用较精确的点集，使用plot绘制拉格朗日插值多项式L的图像
x1=-5:0.001:5
y1=Lagrange(x,y,x1);
plot(x1,y1);
hold on

%part 4:估算拉格朗日插值的误差
x2=-5:0.1:5
y2_lag=Lagrange(x,y,x2)
tar_lag=0;      %误差总值
for i=1:101
    temp_lag=y2_lag(i)-f(x2(i))
    tar_lag=tar_lag+abs(temp_lag);
end
res_lag=tar_lag/101; %误差终值
disp('拉格朗日插值多项式的误差值为：')
disp(vpa(res_lag))   %使用vpa函数将误差计算结果转化为小数





