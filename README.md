For this project, my goal is to build a fly back converter.  As we know a fly back converter is a power supply topology that uses a mutually coupled inductor. It can store energy when current passes through and also release the energy when the power is removed. In addition, we also noticed that a flyback converter is very similar to the booster converter in architecture and performance. There are a couple transformers performing functions in the flyback converter” which are (1) it provides dc isolation. （2） it stores magnetic energy. (3) it changes the voltage levels （4） The output voltage can be either positive or negative and last one (5) additional secondary transformer windings and rectifiers may be added to provide more than one output voltage of any polarity. 
Plase be advise that this program needs Matlb to run and debug. 
Equipment and data tat is given:
 For this project， I will use Mutisim as the main method to create a flyblack converter. For this fly back converter, there is so given data. Which is listed below.
Vo=12v – voltage out is 12 v 
The flyback converter should operated in CCM (continuous conduction mode) from 50% Pomax to Pomax
Most of the components could be ideal. However for ESR of the output capacitor rc the output voltage ripple delta(vo) should be smaller than 2% of Vo. 
For my Pomax  it should [20(t+1)] watts and my input voltage of Vs = 10(U+1)
For the Feedback controller I choose the 
 Also In this project I will also choose to use type III error feedback controller 
Calculations:
For all designs, the output voltage is Vo = 12 V and the converter should operate in CCM
from 50% of Pomax to Pomax.
Your Pomax is [20(T+1)] watts and your input voltage is Vs = 10(U+1) volts.


Po max = 20*(6+1) = 140 watts
Pomin= 0.5 *140=70 watts

Find Iomax and Iomins 
Iomax = pomaxVo=140/12=11.66667A
 Iomins=pominVo=70/12=5.833A

The min and max load resistances:
RLmin=VoIo=12/11.6667=1.0285
RLmax=VoIominx=12/5.833=2.05726



dc input voltage is :
Vs= 10*(6+1)=70 volt

The min and max value of the dc voltage transfer functions
MVDC=VoVs=1270=0.1714

Assume that the efficiency is =100 percent and Dmax =0.36 the transformer ratio is 
///// n=Dmax(1-Dmax)MVDC=(1x0.36) /( (1-0.36)*0.1714)=3.2817  
Let n equal to n = 4

The duty cycle is :
D=nMVDCnMVDC + =0.40673944


Assume the switch frequency fs=100khz, the magnetizing inductance is 
Lm(min)=n2RLmax(1-Dmin)fsx2=422.05726 (1-0.4067)105x2=9.7645 x10-5

Since is so small so that I will use the Lm=100uH




The peak to peak value is that  of the current through the magnetizing inductance is 
ILM(max)= nVo(1-Dmiu)fsLm=4 x 12(1-0.4067)105x2.5x10-3=0.1139136A

IImax= MVDCmaxIOmax =0.1714x11.6667=1.999

The current and voltage stresses of the semiconductor devices are (5.100)

ISMmax=IImax+Iomaxn+iLM(max)2 =1.999+11.66674+(0.1139136)2=4.9726318A
IDM max=nIImax+IoMax+niLM(max)2=4x1.999+11.6667+4x(0.1139136)2=19.8905272A
VSMmax = VImax+nVo=70+4x12=118V
VDMmax=VImaxn+Vo=70/4+12=29.5V 

I will select an international rectifier IRF840 power MOSFET VDSS= 500v, Ism =8A, rDS=0.01 ,Qg=42 nC and Co= 100 PF
and an MBR2540 Schottky barrier diodeIDM=25A, VDM=40v, VF=0.3v and RF=10m

The ripple voltage is:
	Vr=0.01vo=0.01x12=120mv
I assume Vrcpp = 40mv  and VCpp=10 mv. So obtains the maximum value of the ESR of the filer capacitor
		rCmax=VrcppIDMmax=40 x 10-325.6776=1.5m

For the filter capacitance is :
	Cmin= Dmax VofsRLminVCpp=0.4067 x 12105x1.0285x10x10-3=0.004745=4.745x 10-3=4.745m





Now the power losses and the converter efficiency will be calculate at the max load current Iomax=11.66667A and the max input power is VImax= 70 V So the RMS value of the current through the magnetizing inductance is 

ILm(rms)≈ ILm= IImax + Iomax /n=1.999+11.6667/4=4.915675A

Assume the dc value of rL= 350m , PrL is equal to  
PrL= rLI2Lm(rms)=0.35 x4.9156752=8.457351 w 

The switch rms current is:
ISrms=IOmaxDmaxn(1-Dmax)=11.66667(0.40693944)4(1-0.40673944)=3.135447896A

The MOSFET conduction loss is: 
PrDS=rDSI2Srms= 0.01x1.33482=0.0178w

Assume the resistance of the primary winding of the transformer rT1=0.9,so the conduction loss in rT 1is
PrT1=rT1I2Srms=0.9x1.51442=2.0640w

The switch loss is 
Psw=fsCon2V2OD2min= 105 x100x10-12x72x1220.54542=0.2372w
So
PFET = PrDS+Psw2=1.5144+0.23722=1.633W

Therms diode current is 
 IDrms= IOmax1-Dmax=11.66671-0.40673944=15.14695349A

The power loss due to RF is 
PRF=RFI2Drms=0.01x15.146953492=2.294302

The power loss due to VF is
PVF=VFIOmax=0.3x11.6667=3.5w

So that the diode conduction loss is 
PD=PVF+PRF=2.992+3.5=6.4929w

Assuming the resistance of the secondary winding of the transformer rT2= 20m so the power loss in rT2 is 
PrT2=rT2I2Drms = 0.02 x 17.3042=5.9885w
 

The rms current of the filter capacitor is 
ICrms= IOmaxDmax1-Dmax=11.6667x0.406739441-0.40673944=9.66014A

Hence, the power loss in the ESR of the filter capacitor is 
PrC=rCI2Crms=0.0025 x9.660142=0.233295w




Since I pick the ideal switch I will just need the Prc in order to find the total power lost: All above the calculations I just want to show the equation and step of how to solve this type of flyback converter If it is not an ideal component. 
The total power loss is 
PLS=PrDS0+Psw0+PD0+PrL0+PrT10+PrT20+PrC = 0.0178+0+0+0+0+0+0.3921=0.4099

So the converter efficiency at full power is :

=POmaxPOmax+PLs= 140140+0.4099=99.70%
A rectangular positive gate-to-source voltage of magnitude VGSm= 8v to drive the MOSFET. So
PG= fsQgVGSm= 105x42x10-9 x8 =33.6mW

In the circuit, I also need the Vp, usually we know thatVref=2.4 
Vrefvp=D

2.4/0.40673944=5.90058343 = vp
For the controller I choose to use the type 3 error amplifier from Mohan's example provided. 







Conclusion:
In matlab the flyback I design for this project is an open loop circuit by itself. However after I add the type 3 error amplifier from Mohan's example the whole circuit becomes a closed loop circuit. In addition, the final project also requires me to put the phase margin as 50 PM=60 because both of my digits are 6 so that It adds up to 12, which is an even number. Also the flyback controller that I design it actually meet the requirements 

Thanks you watching.
