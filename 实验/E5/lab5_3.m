clear;clc;
matr1=load('d:\MATLAB\matlab\bin\LAB5\data5\data5\training_3.txt');
x1=matr1(:,1:2);y1=matr1(:,3);
%�ͷ�����Խ��Դ������̶�Խ��,Ԥ��Խ׼ȷ
%gammaԽС����˹�ֲ�Խ��gamma�൱�ڵ���ģ�͵ĸ��Ӷȣ�gammaֵԽСģ�͸��Ӷ�Խ�ͣ�gammaֵԽ�ߣ�ģ�͸��Ӷ�Խ��
%�ҳ�Ϊ�������������չ����������Ӧ�˺���ͼ��Ŀ�ȣ���ԽС�����Խխ������Խ����ѡ���ԡ�
%����gamma����֧��������Ӱ��뾶��С��ֻ��Ӱ�쵽���Լ�����ʱ����ô��������CҲ���ܱ�������
%***************************************
figure;
C=1;
sigma = 0.5;
svmStr = svmtrain(x1,y1,'kernel_function','rbf','rbf_sigma',sigma,'boxconstraint',C,'showplot',true);
title(sprintf('SVM Linear Classifier with C = %g,sigma = %g', C,sigma), 'FontSize', 14)
%******************************************
figure;
C=1;
sigma = 0.2;
svmStr = svmtrain(x1,y1,'kernel_function','rbf','rbf_sigma',sigma,'boxconstraint',C,'showplot',true);
title(sprintf('SVM Linear Classifier with C = %g,sigma = %g', C,sigma), 'FontSize', 14)
%***********************************************
figure;
C=1;
sigma = 0.1;
svmStr = svmtrain(x1,y1,'kernel_function','rbf','rbf_sigma',sigma,'boxconstraint',C,'showplot',true);
title(sprintf('SVM Linear Classifier with C = %g,sigma = %g', C,sigma), 'FontSize', 14)