#include <pic.h>
#define _XTAL_FREQ 20000000
__CONFIG(0X3F3A);

void main()
{
    char data = 0;

    TRISC7 = 1; // RX input
    TRISC6 = 0; // TX output
    TRISB = 0; // output
    PORTB = 0; // of state
  

    // UART configuration (9600 baud @ 20MHz)
    SPBRG = 129;
    BRGH = 1;
    SYNC = 0;
    SPEN = 1;
    TXEN = 1;
    CREN = 1;

    while(1)
    {
        while(RCIF == 0);  // Wait for character
        data = RCREG;      // Read UART data

        if(data == 'a')
        {
            RB0 = 1;  // Forward ON
            RB1 = 0; // Reverse OFF
 			RB2 = 1;  // Forward ON
            RB3 = 0; // Reverse OFF
			RB4 = 1;  // Forward ON
            RB5 = 0; // Reverse OFF
			RB6 = 1;  // Forward ON
            RB7 = 0; // Reverse OFF
        }
        else if(data == 'b')
        {
            RB0 = 0; // Forward OFF
            RB1 = 1;  // Reverse ON
			RB2 = 0;  // Forward OFF         
            RB3 = 1; //  Reverse ON 
			RB4 = 0; // Forward OFF         
            RB5 = 1; //  Reverse ON
			RB6 = 0;// Forward OFF         
            RB7 = 1;  // Reverse ON
        }
        else if(data == 'c')
        {
          RB0=RB1=0;
 		if(RB4==1 && RB5==0 ) 
			{
			RB2=1;
			RB3=0;

			}
 		if(RB4==0 && RB5==1 ) 
		{
		RB2=0;
		RB3=1;

		}
		 
        }
         else if(data == 'd')
        {
           RB2=RB3=0;
         if(RB4==1 && RB5==0 ) 
			{
			RB0=1;
			RB1=0;

			}
		 if(RB4==0 && RB5==1 ) 
			{
			RB0=0;
			RB1=1;

			}
		
        }
        
     }
}
