       IDENTIFICATION DIVISION.
       PROGRAM-ID. CIRCLE-MATH.
       AUTHOR. DAN SANTOS.
      ******************************************
      *  Asks for the radius of a circle and   *
      *  calculates the area and circumference *
      ******************************************

       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 WS-CONSTANTS.
           05 WS-PI                    PIC 9V9999999 VALUE 3.1415927.
        01 WS-CIRCLE.
           05 WS-RADIUS                PIC 99999V999 VALUE ZEROES.
           05 WS-CIRCUMFERENCE         PIC 99999V999 VALUE ZEROES.
           05 WS-AREA                  PIC 99999V999 VALUE ZEROES.
        01 WS-DISPLAY-VALUES.
           05 WS-DISPLAY-CIRCUMFERENCE PIC ZZ99.999.
           05 WS-DISPLAY-AREA          PIC ZZ99.999.


       PROCEDURE DIVISION.
       0100-PERFORM-CALCULATIONS.

           DISPLAY "Enter the radius: ".
           ACCEPT WS-RADIUS.
           COMPUTE WS-CIRCUMFERENCE = 2 * WS-PI *WS-RADIUS.
           MOVE WS-CIRCUMFERENCE TO WS-DISPLAY-CIRCUMFERENCE.
           DISPLAY "Circumference: ", WS-DISPLAY-CIRCUMFERENCE.
           COMPUTE WS-AREA = WS-PI * WS-RADIUS *WS-RADIUS.
           MOVE WS-AREA TO WS-DISPLAY-AREA.
           DISPLAY "         Area: ", WS-DISPLAY-AREA.

           STOP RUN.

           END PROGRAM CIRCLE-MATH.
