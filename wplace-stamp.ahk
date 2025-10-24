
W = 32
H = 32

KeyWait, s, D
MouseGetPos, x1, y1 
KeyWait, s
KeyWait, s, D
MouseGetPos, x2, y2
KeyWait, s
KeyWait, s, D
MouseGetPos, xt, yt 
KeyWait, s
; MsgBox top left: %x1% %y1% bottom right: %x2% %y2% target br: %xt% %yt%

dx := x2-xt
dy := y2-yt
Loop %W%{
	lx := (A_Index-1)/(W-1)*x1+(W-(A_Index))/(W-1)*x2
	tx := lx-dx
	Loop %H%{
		ly := (A_Index-1)/(H-1)*y1+(H-(A_Index))/(H-1)*y2
		ty := ly-dy
		
		Send u
		MouseClick, left, %lx%, %ly%
		; Send p
		MouseClick, left, %tx%, %ty%
	}
}

ExitApp

+Esc::ExitApp