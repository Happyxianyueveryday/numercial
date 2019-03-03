%part 1:使用复合梯形公式进行计算积分
s=Ladder;

%part 2:对复合梯形公式的计算结果进行误差估计
res=pi/2-s;  %该积分的计算方法可以见word文档的说明

disp('使用复合梯形公式计算的误差为:');
disp(vpa(res));