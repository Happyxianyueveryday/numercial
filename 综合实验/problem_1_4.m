%part 1:进行三次样条插值
f=@(x) 1/(1+x*x)    %待插值函数f
x=[-5,-4,-3,-2,-1,0,1,2,3,4,5]
y=[f(-5),f(-4),f(-3),f(-2),f(-1),f(0),f(1),f(2),f(3),f(4),f(5)]
x0=[-5,-4,-3,-2,-1,0,1,2,3,4,5]
y0=spline(x,y,x0)

disp('插值进行完毕，下面进行展示原函数f和插值多项式L的函数图像')

%part 2:作出三次样条插值多项式和原函数的图像
%先绘制原函数f的图像
fplot(f,[-10,10])
hold on 
%再利用较精确的点集，使用plot绘制三次样条插值多项式L的图像
x1=-5:0.001:5
y1=spline(x,y,x1);
plot(x1,y1);
hold on

%part 3:估算三次样条插值的误差
x2=-5:0.1:5
y2_lag=spline(x,y,x2)
tar_lag=0;      %误差总值
for i=1:101
    temp_lag=y2_lag(i)-f(x2(i))
    tar_lag=tar_lag+abs(temp_lag);
end
res_lag=tar_lag/101; %误差终值
disp('三次样条插值多项式的误差值为：')
disp(vpa(res_lag))   %使用vpa函数将误差计算结果转化为小数


