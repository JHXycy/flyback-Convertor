%% voltage input
Vin = 70;

 %MOSEFT
 
 %diode patameter


  %switch frequency 
  fsw = 100e3;

  %Duty cycle
    D = 0.4067;
    %control
    Vref = 2.4;
  %pwm paramater ?? what is VP in my project
  
  Vp=Vref/D; %% pv is equal to 
  limit = 0.1;  

  %value of RL
   RL = 2.05326;

%value of filter Capacitance
C = 5e-3;




%type 3 filter 
R1 = 100e3;
R2=18.918e3;
R3 = 11.5e3;
C2 = 3.02e-9;
C1 = 25.6e-9;
C3 = 4.4e-9;


%opamp
Rin_opamp = 1e7;
Rout_opamp = 1e-3;
A_opamp = 2e5;

%FInd Ra voltage divider
Rb= 100e3;
Vo = 12;
Ra = ((Vo/Vref) *Rb)- Rb;





