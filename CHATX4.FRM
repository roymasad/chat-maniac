VERSION 5.00
Begin VB.Form Form4 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "About screen !"
   ClientHeight    =   3795
   ClientLeft      =   2670
   ClientTop       =   7530
   ClientWidth     =   4275
   Icon            =   "CHATx4.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   Palette         =   "CHATx4.frx":0442
   PaletteMode     =   2  'Custom
   ScaleHeight     =   3795
   ScaleWidth      =   4275
   Begin VB.Timer Timer2 
      Interval        =   1
      Left            =   3840
      Top             =   3960
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   3960
      Top             =   0
   End
   Begin VB.Shape Shape1 
      FillStyle       =   0  'Solid
      Height          =   405
      Left            =   105
      Top             =   3720
      Width           =   4110
   End
   Begin VB.Image PIC 
      Appearance      =   0  'Flat
      Height          =   480
      Left            =   1815
      Picture         =   "CHATx4.frx":C0468
      ToolTipText     =   "HI"
      Top             =   1605
      Width           =   480
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   3945
      Left            =   255
      Picture         =   "CHATx4.frx":C08AA
      Stretch         =   -1  'True
      ToolTipText     =   "THIS IS MY COOL LOGO"
      Top             =   90
      Width           =   3840
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
MX = X
MY = Y

End Sub

Private Sub Form_DblClick()
MX = X
MY = Y

End Sub


Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 27 Then Unload Me
End Sub

Private Sub Form_Load()
Randomize Timer
A = Int(Rnd * 4) + 1
Timer1.Enabled = True
Timer2.Enabled = True
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
MX = X
MY = Y
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
MX = X
MY = Y
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
MX = X
MY = Y

End Sub


Private Sub Form_Terminate()
Timer1.Enabled = False
Timer2.Enabled = False
End Sub

Private Sub Image1_Click()
MX = X
MY = Y

End Sub

Private Sub Image1_DblClick()
MX = X
MY = Y

End Sub


Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
MX = X
MY = Y

End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
MX = X
MY = Y

End Sub


Private Sub Image1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
MX = X
MY = Y

End Sub


Private Sub Timer1_Timer()
Form4.Top = Form4.Top - 30
If Form4.Top < 1500 Then Timer1.Enabled = False



End Sub


Private Sub Timer2_Timer()
PIC.Picture = Form1.Icon
Static T, TT
X = MX
Y = MY

X2 = Val(PIC.Left)
Y2 = Val(PIC.Top)

If X = X2 Then X = X + 3
If Y = Y2 Then Y = Y + 3


XX = X
YY = Y

A = Abs(XX - X2)
B = Abs(YY - Y2)

If A >= B Then GoTo 1
If B >= A Then GoTo 2

1
If X >= X2 Then GoTo 11
If X2 >= X Then GoTo 22


11
T = T + 12
TT = ((YY * X2 - Y2 * XX) - (T) * (YY - Y2)) / (X2 - XX)
PIC.Left = T
PIC.Top = TT
GoTo 3

22
T = T - 12
TT = ((YY * X2 - Y2 * XX) - (T) * (YY - Y2)) / (X2 - XX)
PIC.Left = T
PIC.Top = TT
GoTo 3

2
If Y >= Y2 Then GoTo 33
If Y2 >= Y Then GoTo 44

33
TT = TT + 12

T = ((TT * (X2 - XX)) - (YY * X2 - Y2 * XX)) / (Y2 - YY)

PIC.Left = T
PIC.Top = TT
GoTo 3

44
TT = TT - 12

T = ((TT * (X2 - XX)) - (YY * X2 - Y2 * XX)) / (Y2 - YY)

PIC.Left = T
PIC.Top = TT


3
End Sub
