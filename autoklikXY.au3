# skrip ini untuk otomatis klik, dengan menempatkan posisi X dan Y jadi tidak terpaku oleh mouse 
# dan input X dan Y sehingga mudah untuk kita mudah modifikasi jika tampilan berbeda


MsgBox(0, 'carauntuk.com, tools klikmouse X&Y', 'bot untuk klik dengan penempatan X dan Y yang dapat di input, perlu aplikasi Au3Info.exe sebagai pendukung')

Run("Au3Info.exe") 


#include <MsgBoxConstants.au3>

# 726,546 langsung restart dan next stage
    ; Places the input box in the top left corner displaying the characters as they
    ; are typed.
    Local $sAnswer = InputBox("Question1", "positionX?", 726, "", _
             - 1, -1, 0, 0)

    ; Display the result.
    ;MsgBox($MB_SYSTEMMODAL, "", $sAnswer)

    ; Places the input box in the top left corner displaying the characters as they
    ; are typed.
    Local $sAnswer2 = InputBox("Question2", "positionY?", 546, "", _
             - 1, -1, 0, 0)

    ; Display the result.
    ;MsgBox($MB_SYSTEMMODAL, "", $sAnswer2)

    MsgBox($MB_SYSTEMMODAL, "", "TEKAN F4=STOP F5=PLAY")

# loop area
HotKeySet("{F4}", "ExitProg") ; ;;Sets F4 as a hotkey to exit the progam
HotKeySet("{F5}", "StartProg") ;;;Sets F5 as a hotkey to start the program

 
While 1
    Sleep(1000)   ;;;Waits for function call
    Wend
 
Func StartProg()  
    while 1
    MouseClick("left", $sAnswer, $sAnswer2) ;;;left clicks
    MouseClick("left", $sAnswer, $sAnswer2) ;;;left clicks

    Sleep(5000)
    WEnd
EndFunc
 
 
Func ExitProg()
    Exit 0  ;;;Exits the program
EndFunc