function [grid,y]= strimage(temp,grid,y)
%[grid,y]= 
    % for i=1:1:temp
    %    [feature(i,:),label(i)]=strimage(i); 
    % end
    tempgrid=zeros(784,1);
      fidin = fopen('email_test.txt'); % ��test2.txt�ļ� 
      i = 1;
      apres = [];
      while ~feof(fidin)
          tline = fgetl(fidin); % ���ļ����� 
          apres{i} = tline;
          i = i+1;
      end
 
    for j=1:1:temp
         %��aתΪchar
          a = char(apres(j));
          lena = size(a);
          lena = lena(2);       %a��size
          xy = sscanf(a(4:lena), '%d:%d');  %����
          tempy= sscanf(a(1:2), '%d');         %��ǩ
          y(j)=tempy;
          lenxy = size(xy);
          lenxy = lenxy(1);

          for z=2:2:lenxy  % ��һ����
              if(xy(z)<=0)
                  break
              end
            grid(j,xy(z-1)) = xy(z);
            %tempgrid(xy(z-1))=xy(z)*100/255;
          end
%           grid1 = reshape(tempgrid,28,28);
%           grid1 = fliplr(diag(ones(28,1)))*grid1;
%           grid1 = rot90(grid1,3)
%           image(grid1)
%           hold on;
    end
end