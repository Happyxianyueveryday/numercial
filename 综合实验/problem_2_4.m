%part 1:使用复合三点高斯公式计算原目标积分
format long;
s=Gause_3(-1,1,6);
%disp(s);

%part 2:估计使用复合三点高斯公式计算积分的误差
res=abs(s-pi/2);     %积分准确值为pi/2，该部分证明参见附带的pdf文档
disp('使用复合三点高斯积分公式计算的误差为:');
disp(vpa(res));

