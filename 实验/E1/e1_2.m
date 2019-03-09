clc,clear;
x=load('ex2x.dat');
y=load('ex2y.dat');
sigma=std(x);%����еı�׼��
mu=mean(x);%����е�ƽ��ֵ
%alpha=1.2;%���ó�ʼѧϰֵ
iterations = 50;%���õ�������
m=length(y);
for i=1:m%���ݴ���
    x(i,:)=(x(i,:)-mu)./sigma;
end
x=[ones(m,1),x];
theta=zeros(size(x,2),1);

alpha=0.9;%���ó�ʼѧϰֵ
for num_iterations = 1:iterations
    grad = (1/m).* x' * ((x * theta) - y);
    theta = theta - alpha .* grad;
end
%plot
figure;
plot(0:(iterations-1),J,'-');
xlabel('Number of iterations'),ylabel('Cost J');



%{
hold on;
alpha=1.20;%���ó�ʼѧϰֵ
theta=zeros(size(x,2),1);
[theta,J] = gradientDescent(x, y, theta, alpha, iterations);%start up
%plot
figure;
plot(0:(iterations-1),J,'-');
xlabel('Number of iterations'),ylabel('Cost J');
legend('\alpha=9');


hold on;
alpha=1.21;%�ٴ����ó�ʼѧϰֵ
theta=zeros(size(x,2),1);
[theta,J] = gradientDescent(x, y, theta, alpha, iterations);%start up
plot(0:(iterations-1),J,'-');

hold on;
alpha=1.22;%�ٴ����ó�ʼѧϰֵ
theta=zeros(size(x,2),1);
[theta,J] = gradientDescent(x, y, theta, alpha, iterations);%start up
plot(0:(iterations-1),J,'-');


legend('\alpha=0.1','\alpha=0.2','\alpha=0.3');
%}




%start up
