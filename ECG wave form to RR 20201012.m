clc
close all
clear all


%¡@[ndata1, text1] = xlsread('#1_2017_08_30-10_46_36_ECG.csv');
% [ndata28, text28] = xlsread('#_28_2017_08_30-10_46_38_ECG.csv');



[time1, data1]=textread('#1_2017_08_30-10_46_36_ECG1.txt','%s%d ','delimiter', ','); 




k = strfind(time1,'30/08/2017 10:46:38.411');
 ecgdata1=0.00625*(data1 -2048) ;

  plot(ecgdata1(55112:56702),'r')
 
  ylim([-2 2.5])
  legend('ecg #1')
  
  
  %%---------------------
  

    t1_1=pan_tompkin1(ecgdata1(55112:56702),250);


      %----------------------------------------------------rr
    plot(t1_1,'r o')
    legend('#1 RR')
    
    %----------------------------------------------------HR
     plot(((1./t1_1).*60) ,'r o')
    legend('#1 HR')    
      
      
