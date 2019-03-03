format long 
%part 1:对原积分使用复合辛普森公式进行求解
s=simpson(-1,1,10);

%part 2:进行误差估计和计算
res=abs(pi/2-s);
disp('使用复合辛普森公式计算的误差为:');
disp(vpa(res));
