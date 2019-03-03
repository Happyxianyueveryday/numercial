%拉格朗日插值函数
%拉格朗日插值函数lagrange接受连两个参数,其中x0为插值点的值的数列，y0为插值点的函数值的数列，x为拉格朗日插值多项式的求值点
function y=Lagrange(x0,y0,x); 
n=length(x0);       %获取插值点数列的长度
m=length(x);        
for i=1:m
  z=x(i);
  s=0.0;            %给s的初值
  for k=1:n
      p=1.0;        %p为拉格朗日插值基函数
      for j=1:n
          if j~=k
            p=p*(z-x0(j))/(x0(k)-x0(j));     %计算拉格朗日插值基函数，即：lk(x)=((x-x0)(x-x1)...(x-x(k-1))(x-x(k+1))...(x-xn))/((xk-x0)(xk-x1)...(xk-x(k-1))(xk-x(k+1))...(xk-xn))
          end
      end
      s=p*y0(k)+s;  %由拉格朗日插值基函数得到拉格朗日插值多项式：L(x)
    end
    y(i)=s; 
end


