# fnlock-ducky-mini
An autohotkey scripts I created to replace Caps Lock with Fn Lock in Ducky Mini(DKM1461SD). After reading the manual of Ducky mini, I was delighted to know that Caps Lock could be replaced by Fn. However, I was a bit disappointed to find out that you still need to hold it in order to shift to fn layer. I was expecting it to behave like Caps Lock, that is, it can toggle between standard layer and fn layer. So I created this scripts to remedy that.

Features:
*FN Lock(Caps Lock replacement)- If the Caps Lock is lit, the keyboard is in fn layer.
*Adjustable Mouse Key Acceleration - there are 4 configuration of accelaration(None, Slow, Medium and Fast) of mouse movement in fn layer(W,A,S,D).

Installation:

1. Install Autohotkey v1.1.24.00 or later

2. Double Click Config.ahk, a window will appear. 

3. Choose the desired Mouse Key Acceleration in Combo Box. 

4. If you change the configuration of keyboard using Ducky Advisor, you must also change Mouse Key Mode as follows:
	-If you hold Fn+Alt+H for 3 sec and choose M and 1, you must select Mode 1 in Mouse Key Mode.
	-If you hold Fn+Alt+H for 3 sec and choose M and 2, you must select Mode 2 in Mouse Key Mode.

5. Press OK and a message box of confirmation that configuration is saved will appear.

6. Run the fnlock.ahk

7. (Optional)If you are using Windows 7, you can create a shortcut of fnlock.ahk to C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup (assuming that windows is installed in C:) so that fnlock.ahk will be run at start-up.
