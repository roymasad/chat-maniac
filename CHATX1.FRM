VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000007&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "CHAT MANIAC by Roy Massaad"
   ClientHeight    =   7080
   ClientLeft      =   2055
   ClientTop       =   2010
   ClientWidth     =   5280
   Icon            =   "CHATx1.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7080
   ScaleWidth      =   5280
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command4 
      Caption         =   "||||||\"
      Height          =   915
      Left            =   15
      TabIndex        =   14
      ToolTipText     =   "Pictures down"
      Top             =   4845
      Width           =   195
   End
   Begin VB.CommandButton Command3 
      Caption         =   "\||||||"
      Height          =   915
      Left            =   5085
      TabIndex        =   13
      ToolTipText     =   "Picture up"
      Top             =   4875
      Width           =   195
   End
   Begin VB.PictureBox Picture4 
      BackColor       =   &H00000000&
      Height          =   960
      Left            =   3960
      ScaleHeight     =   900
      ScaleWidth      =   1020
      TabIndex        =   12
      Top             =   5880
      Width           =   1080
      Begin VB.Image Image6 
         Height          =   870
         Left            =   0
         Stretch         =   -1  'True
         Top             =   0
         Width           =   990
      End
   End
   Begin VB.PictureBox Picture3 
      BackColor       =   &H00000000&
      Height          =   960
      Left            =   2730
      ScaleHeight     =   900
      ScaleWidth      =   1020
      TabIndex        =   11
      Top             =   5880
      Width           =   1080
      Begin VB.Image Image5 
         Height          =   885
         Left            =   -15
         Stretch         =   -1  'True
         Top             =   0
         Width           =   1005
      End
   End
   Begin VB.PictureBox Picture2 
      BackColor       =   &H00000000&
      Height          =   960
      Left            =   1485
      ScaleHeight     =   900
      ScaleWidth      =   1020
      TabIndex        =   10
      Top             =   5880
      Width           =   1080
      Begin VB.Image Image4 
         Height          =   900
         Left            =   -15
         Stretch         =   -1  'True
         Top             =   0
         Width           =   1020
      End
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00000000&
      Height          =   960
      Left            =   240
      ScaleHeight     =   900
      ScaleWidth      =   1020
      TabIndex        =   9
      Top             =   5895
      Width           =   1080
      Begin VB.Image Image3 
         Height          =   870
         Left            =   0
         Stretch         =   -1  'True
         Top             =   -15
         Width           =   975
      End
   End
   Begin VB.FileListBox File1 
      Height          =   675
      Left            =   2355
      TabIndex        =   8
      Top             =   2520
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Timer Timer6 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   0
      Top             =   720
   End
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   0
      Top             =   360
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   1830
      Top             =   3660
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   250
      Left            =   4920
      Top             =   480
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00000000&
      Height          =   375
      Left            =   2640
      Picture         =   "CHATx1.frx":0442
      Style           =   1  'Graphical
      TabIndex        =   2
      ToolTipText     =   "BEEP THE MEMBERS"
      Top             =   960
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CLEAR"
      Height          =   375
      Left            =   3720
      TabIndex        =   3
      ToolTipText     =   "CLEARS THE CHAT BOX"
      Top             =   960
      Width           =   1335
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   3180
      Top             =   3645
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   450
      Left            =   240
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   405
      Width           =   4815
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   4335
      Left            =   255
      Locked          =   -1  'True
      MouseIcon       =   "CHATx1.frx":0884
      MousePointer    =   99  'Custom
      MultiLine       =   -1  'True
      ScrollBars      =   1  'Horizontal
      TabIndex        =   1
      Top             =   1455
      Width           =   4815
   End
   Begin VB.TextBox Text3 
      Enabled         =   0   'False
      Height          =   375
      Left            =   2295
      MultiLine       =   -1  'True
      TabIndex        =   4
      Text            =   "CHATx1.frx":0B8E
      Top             =   2820
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   0
      Top             =   0
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   375
      Left            =   720
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   7
      Top             =   5400
      Visible         =   0   'False
      Width           =   3735
   End
   Begin VB.Label Label6 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   3975
      TabIndex        =   18
      Top             =   6870
      Width           =   1080
   End
   Begin VB.Label Label5 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   2730
      TabIndex        =   17
      Top             =   6870
      Width           =   1080
   End
   Begin VB.Label Label4 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   1485
      TabIndex        =   16
      Top             =   6870
      Width           =   1080
   End
   Begin VB.Label Label3 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   240
      TabIndex        =   15
      Top             =   6870
      Width           =   1080
   End
   Begin VB.Image Image2 
      Height          =   375
      Left            =   4680
      MouseIcon       =   "CHATx1.frx":0B92
      MousePointer    =   99  'Custom
      Picture         =   "CHATx1.frx":0E9C
      Stretch         =   -1  'True
      ToolTipText     =   "?"
      Top             =   0
      Width           =   315
   End
   Begin VB.Image LF 
      Height          =   480
      Left            =   3840
      Picture         =   "CHATx1.frx":12DE
      Top             =   120
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image LO 
      Height          =   480
      Left            =   3600
      Picture         =   "CHATx1.frx":1720
      Top             =   120
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image Image1 
      Height          =   435
      Left            =   4080
      MouseIcon       =   "CHATx1.frx":1B62
      MousePointer    =   99  'Custom
      Picture         =   "CHATx1.frx":1E6C
      Stretch         =   -1  'True
      ToolTipText     =   "SETTINGS"
      Top             =   0
      Width           =   495
   End
   Begin VB.Line L10 
      BorderColor     =   &H00000000&
      X1              =   1560
      X2              =   2280
      Y1              =   4440
      Y2              =   4440
   End
   Begin VB.Line L9 
      BorderColor     =   &H00808080&
      Visible         =   0   'False
      X1              =   1560
      X2              =   2175
      Y1              =   4200
      Y2              =   4215
   End
   Begin VB.Line Line1 
      X1              =   3720
      X2              =   4560
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Line L8 
      BorderColor     =   &H00FF00FF&
      Visible         =   0   'False
      X1              =   1560
      X2              =   2175
      Y1              =   3840
      Y2              =   3855
   End
   Begin VB.Line L7 
      BorderColor     =   &H00FF0000&
      Visible         =   0   'False
      X1              =   1440
      X2              =   2055
      Y1              =   3360
      Y2              =   3375
   End
   Begin VB.Line L6 
      BorderColor     =   &H00FFFF00&
      Visible         =   0   'False
      X1              =   1440
      X2              =   2055
      Y1              =   3600
      Y2              =   3615
   End
   Begin VB.Line L5 
      BorderColor     =   &H0000FF00&
      Visible         =   0   'False
      X1              =   1440
      X2              =   2055
      Y1              =   3000
      Y2              =   3015
   End
   Begin VB.Line L4 
      BorderColor     =   &H0000FFFF&
      Visible         =   0   'False
      X1              =   1560
      X2              =   2175
      Y1              =   2400
      Y2              =   2415
   End
   Begin VB.Line L3 
      BorderColor     =   &H000000FF&
      Visible         =   0   'False
      X1              =   1560
      X2              =   2175
      Y1              =   2040
      Y2              =   2055
   End
   Begin VB.Line L2 
      BorderColor     =   &H00C0C0C0&
      Visible         =   0   'False
      X1              =   1560
      X2              =   2175
      Y1              =   1680
      Y2              =   1695
   End
   Begin VB.Line L1 
      BorderColor     =   &H00FFFFFF&
      Visible         =   0   'False
      X1              =   1560
      X2              =   2160
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Image F4 
      Height          =   480
      Left            =   3480
      Picture         =   "CHATx1.frx":22AE
      Top             =   120
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image F3 
      Height          =   480
      Left            =   3240
      Picture         =   "CHATx1.frx":25B8
      Top             =   120
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image F2 
      Height          =   480
      Left            =   3000
      Picture         =   "CHATx1.frx":29FA
      Top             =   120
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image F1 
      Height          =   480
      Left            =   2760
      Picture         =   "CHATx1.frx":2E3C
      Top             =   120
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image F0 
      Height          =   480
      Left            =   2520
      Picture         =   "CHATx1.frx":327E
      Top             =   120
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      Caption         =   "INPUT WINDOW :"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   360
      Left            =   240
      TabIndex        =   6
      Top             =   75
      Width           =   4815
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "THE CHAT BOX :"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   1035
      Width           =   4815
   End
   Begin VB.Menu OP 
      Caption         =   "&OPTIONS"
      NegotiatePosition=   1  'Left
      Begin VB.Menu CR 
         Caption         =   "CLEAR"
         Shortcut        =   ^C
      End
      Begin VB.Menu BP 
         Caption         =   "BEEP"
         Shortcut        =   ^X
      End
      Begin VB.Menu HS 
         Caption         =   "HISTORY"
         Shortcut        =   ^H
      End
      Begin VB.Menu KEYSET 
         Caption         =   "MESSENGER..."
         Shortcut        =   ^A
      End
      Begin VB.Menu ST 
         Caption         =   "SETTINGS..."
         Shortcut        =   ^W
      End
      Begin VB.Menu ZXC 
         Caption         =   "-"
      End
      Begin VB.Menu CA 
         Caption         =   "SEND MAIL ..."
         Shortcut        =   ^S
      End
      Begin VB.Menu CM 
         Caption         =   "CHECK MAIL ..."
         Shortcut        =   ^E
      End
      Begin VB.Menu VOICEMAIL 
         Caption         =   "VOICE MAIL ...."
         Shortcut        =   ^V
      End
      Begin VB.Menu LOP 
         Caption         =   "-"
      End
      Begin VB.Menu EX 
         Caption         =   "EXIT"
         Shortcut        =   ^Q
      End
   End
   Begin VB.Menu ABOUT 
      Caption         =   "&???"
      NegotiatePosition=   3  'Right
      Begin VB.Menu HH 
         Caption         =   "HELP ME..."
      End
      Begin VB.Menu CXZ 
         Caption         =   "-"
      End
      Begin VB.Menu AB 
         Caption         =   "ABOUT ME !!!"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Public Sub CAP()
Static T33
T33 = T33 + 1
If T33 = 12 Then T33 = 1
Randomize Timer
If Mid$(D33$, T33, 1) = UCase$(Mid$(D33$, T33, 1)) Then Mid$(D33$, T33, 1) = LCase$(Mid$(D33$, T33, 1)): GoTo 12
If Mid$(D33$, T33, 1) = LCase$(Mid$(D33$, T33, 1)) Then Mid$(D33$, T33, 1) = UCase$(Mid$(D33$, T33, 1)): GoTo 12

12
Form1.Caption = D33$

End Sub


Public Sub CLEA()
Dim LESB90$(1000)
H90 = 0: F90 = 0
Open SPATH$ + "NAMES" For Input As #5
Do
F90 = F90 + 1
Line Input #5, LESB90$(F90)
Loop Until (EOF(5))
Close
Open SPATH$ + "NAMES" For Output As #5
For T90 = 1 To F90
If H90 = 0 And LESB90$(T90) = MYNAME$ Then LESB90$(T90) = "": H90 = 1
Print #5, LESB90$(T90)
Next T90
Close



End Sub

Sub ROY(XX As String)
K$ = "QAZXSWREDYOR"
TT = Len(K$)
Dim T$
T$ = XX
L = Len(T$)
For X = 1 To Len(T$)
Z = Z + 1
If Z > TT Then Z = 1
AA = Asc(Mid$(K$, Z, 1))
A$ = Mid$(T$, X, 1)
A$ = Chr$((Asc(A$) + AA))
Mid$(T$, X, 1) = A$
Next X
XXX$ = T$
End Sub
Sub ROY2(XX2 As String)
K2$ = "QAZXSWREDYOR"
TT2 = Len(K2$)
Dim T2$
T2$ = XX2
L2 = Len(T2$)
For X2 = 1 To Len(T2$)
Z2 = Z2 + 1
If Z2 > TT2 Then Z2 = 1
AA2 = Asc(Mid$(K2$, Z2, 1))
A2$ = Mid$(T2$, X2, 1)
A2$ = Chr$((Asc(A2$) - AA2))
Mid$(T2$, X2, 1) = A2$
Next X2
XXX2$ = T2$
End Sub

Private Sub AB_Click()
Form4.Show vbModal
End Sub

Private Sub BP_Click()
Open SPATH$ + "BEEP.TXT" For Append As #1
Print #1, "ON-"
Close
End Sub

Private Sub CA_Click()
CALL3.Show
End Sub

Private Sub CM_Click()
MCHECK.Show
End Sub


Private Sub Command1_Click()
Text1.Text = "": CCC = 1
End Sub

Private Sub Command2_Click()
Open SPATH$ + "BEEP.TXT" For Append As #1
Print #1, "ON-"
Close

End Sub

Private Sub Command3_Click()
If STAT = 0 Then Form1.Height = Form1.Height - 1200: STAT = 1
End Sub

Private Sub Command4_Click()
If STAT = 1 Then Form1.Height = Form1.Height + 1200: STAT = 0
KLM = 0
Open SPATH$ + "NAMES" For Input As #191
Do
Line Input #191, A33$
If A33$ = "" Then GoTo 123911
MILA$ = MILA$ + A33$ + "/"
If Dir(SPATH$ + "TEMP\" + A33$) = "" Then GoTo 123911
KLM = KLM + 1
If KML = 5 Then Exit Do

If KLM = 1 Then Form1.Image3 = LoadPicture(SPATH$ + "TEMP\" + A33$): Form1.Label3 = A33$
If KLM = 2 Then Form1.Image4 = LoadPicture(SPATH$ + "TEMP\" + A33$): Form1.Label4 = A33$
If KLM = 3 Then Form1.Image5 = LoadPicture(SPATH$ + "TEMP\" + A33$): Form1.Label5 = A33$
If KLM = 4 Then Form1.Image6 = LoadPicture(SPATH$ + "TEMP\" + A33$): Form1.Label6 = A33$
123911

Loop Until (EOF(191))
Close
End Sub


Private Sub CR_Click()
Text1.Text = "": CCC = 1

End Sub


Private Sub EX_Click()
Form10.Show vbModal
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 112 Then X = 1: GoTo 666
If KeyCode = 113 Then X = 2: GoTo 666
If KeyCode = 114 Then X = 3: GoTo 666
If KeyCode = 115 Then X = 4: GoTo 666
If KeyCode = 116 Then X = 5: GoTo 666
If KeyCode = 117 Then X = 6: GoTo 666
If KeyCode = 118 Then X = 7: GoTo 666
If KeyCode = 123 Then Text2.Text = BRIJHO$
GoTo 123

666
Open SPATH$ + "TEXT.TXT" For Append As #9
Call ROY(MYNAME$ + ": " + MESS$(X))
Print #9, XXX$
Close

123
End Sub

Private Sub Form_Load()
STAT = 0
Open "C:\CHAT\ST" For Input As #1
Input #1, XXX
Close
If XXX = 0 Then GoSub 666

Open "C:\CHAT\ST" For Output As #1
XXX = 1
Print #1, XXX
Close

Open "c:\chat\trun.txt" For Input As #89
Input #89, KLM
SPLASH.trun.Caption = KLM
Close #89
KLM = KLM + 1
Open "c:\chat\trun.txt" For Output As #89
Print #89, KLM
Close #89
KLM = 0

Open "C:\CHAT\KEYSET" For Input As #3
For YU = 1 To 7
Line Input #3, MESS$(YU)
Next YU
Close

Open "C:\CHAT\NAMES" For Output As #2
Close

Open "C:\CHAT\FONT" For Input As #5
Line Input #5, FUCK$
Close
Form1.Text1.Font = FUCK$

PASS$ = Chr$(160) + Chr$(135) + Chr$(160)
SPLASH.Show vbModal
Form2.Show vbModal
Form3.Show vbModal
Timer1.Enabled = True
Timer2.Enabled = True
Timer4.Enabled = True
Timer3.Enabled = True
Timer5.Enabled = True
Timer6.Enabled = True

Open "C:\CHAT\FONT2" For Input As #1
Input #1, A
Input #1, B
Input #1, C
Input #1, D
Input #1, E
Input #1, Q$
Input #1, ANS$
Close


Open "C:\CHAT\MES" For Input As #3
Line Input #3, MES$
Close
If MES$ = "XXX123" Then MES$ = ""

Text1.BackColor = A
Text1.ForeColor = B
Text1.FontSize = C
Text1.FontBold = D
Text1.FontItalic = E
POPUP$ = Q$

CCC = 1
SHIT = 0
Open SPATH$ + "PASSCODE" For Input As #1
Line Input #1, W$
Close

Call ROY2(W$)
W$ = XXX2$

If PASS$ = W$ Then GoTo 10
Beep
f = MsgBox("WRONG PASSWORD", vbOKOnly, "SECURITY BLOCK"): End


GoTo 10
666
Z = MsgBox("SINCE THIS IS THE FIRST TIME YOU RUN CHAT MANIAC PLEASE READ THE README FILE BEFORE YOU RUN THE CHAT PROGRAM .", vbOKOnly, "CHAT MANIAC")
ZZ = Shell("EXPLORER C:\CHAT\START", vbNormalFocus)
Return

10
Open SPATH$ + "TEXT.TXT" For Append As #1: G$ = MYNAME$ + " HAS JOINED THE CHAT ROOM ...": Call ROY(G$): G$ = XXX$: Print #1, G$: Close:
D33$ = "CHAT MANIAC"
Open SPATH$ + "NAMES" For Append As #2
Print #2, MYNAME$
Close
Form1.Caption = Form1.Caption + Chr$(82) + Chr$(111) + Chr$(121) + " " + Chr$(77) + Chr$(97) + Chr$(115) + Chr$(115) + Chr$(97) + Chr$(97) + Chr$(100)

Open "C:\CHAT\TEMP\GINNY" For Output As #1
Print #1,
Close

Kill "C:\CHAT\TEMP\*.*"
If PIC$ <> "" Then FileCopy PIC$, SPATH$ + "\TEMP\" + MYNAME$

Open SPATH$ + "NAMES" For Input As #1
Do
Line Input #1, A33$
If A33$ = "" Then GoTo 123
MILA$ = MILA$ + A33$ + "/"
If Dir(SPATH$ + "TEMP\" + A33$) = "" Then GoTo 123
KLM = KLM + 1
If KML = 5 Then Exit Do

If KLM = 1 Then Form1.Image3 = LoadPicture(SPATH$ + "TEMP\" + A33$): Form1.Label3 = A33$
If KLM = 2 Then Form1.Image4 = LoadPicture(SPATH$ + "TEMP\" + A33$): Form1.Label4 = A33$
If KLM = 3 Then Form1.Image5 = LoadPicture(SPATH$ + "TEMP\" + A33$): Form1.Label5 = A33$
If KLM = 4 Then Form1.Image6 = LoadPicture(SPATH$ + "TEMP\" + A33$): Form1.Label6 = A33$
123

Loop Until (EOF(1))
Close
KLM = MsgBox(MILA$, vbOKOnly, "SESSION MEMBERS")
End Sub

Private Sub M_Click()

End Sub

Private Sub Form_Terminate()
If MODE$ = "CLIENT" Then Open SPATH$ + "TEXT.TXT" For Append As #1: G$ = MYNAME$ + " HAS LEFT THE CHAT ROOM ...": Call ROY(G$): G$ = XXX$: Print #1, G$: Close: Call CLEA: GoTo 10
Open SPATH$ + "STATUS" For Output As #2
Print #2, "OFF"
Close
Open SPATH$ + "PASSCODE" For Output As #2: Print #2, Chr$(160) + Chr$(135) + Chr$(160): Close

Open SPATH$ + "BEEP.TXT" For Output As #1: Close #1


Open SPATH$ + "TEXT.TXT" For Output As #3
Close

Open SPATH$ + "NAMES" For Output As #2
Close

Open "C:\CHAT\TEMP\GINNY" For Output As #1
Print #1,
Close
Kill ("C:\CHAT\TEMP\*.*")
10

End
End Sub

Private Sub HH_Click()
Form9.Show vbModal
End Sub


Private Sub HS_Click()
Form7.Show vbModal
End Sub

Private Sub Image1_Click()
Form5.Show vbModal

End Sub

Private Sub Image2_Click()
BOX.Show
End Sub

Private Sub KEYSET_Click()
Form11.Show
End Sub

Private Sub ST_Click()
Form5.Show vbModal
End Sub

Private Sub Text2_KeyDown(KeyCode As Integer, Shift As Integer)

DICK$ = Left$(Text2.Text, 2)
DDD$ = Chr$(13) + Chr$(10)
AX = Text2.Text
BRIJHO$ = Text2.Text
676
If KeyCode = 13 Then GoSub 666

If KeyCode = 13 And CCC = TK Then Open SPATH$ + "TEXT.TXT" For Append As #1: G$ = MYNAME$ + ": " + Right$(Text2.Text, Len(Text2.Text)): Call ROY(G$): G$ = XXX$: Print #1, G$: Close: Text2.Text = "": SHIT = 1: GoTo 123
If KeyCode = 13 And CCC >= 1 And SHIT = 1 And DICK$ = DDD$ Then Open SPATH$ + "TEXT.TXT" For Append As #1: G$ = MYNAME$ + ": " + Right$(Text2.Text, Len(Text2.Text) - 2): Call ROY(G$): G$ = XXX$: Print #1, G$: Close: Text2.Text = "": GoTo 123
If KeyCode = 13 And CCC >= 1 And SHIT = 1 Then Open SPATH$ + "TEXT.TXT" For Append As #1: G$ = MYNAME$ + ": " + Right$(Text2.Text, Len(Text2.Text)): Call ROY(G$): G$ = XXX$: Print #1, G$: Close: Text2.Text = "": GoTo 123
If KeyCode = 13 And CCC >= 1 And SHIT = 0 Then Open SPATH$ + "TEXT.TXT" For Append As #1: G$ = MYNAME$ + ": " + Right$(Text2.Text, Len(Text2.Text)): Call ROY(G$): G$ = XXX$: Print #1, G$: Close: Text2.Text = "": SHIT = 1: GoTo 123

If KeyCode = 27 Then Text2.Text = ""

GoTo 123

666
TR = Len(AX)
For I = 1 To TR
If Mid$(AX, I, 1) = Chr$(13) Then Mid$(AX, I, 1) = " "
If Mid$(AX, I, 1) = Chr$(10) Then Mid$(AX, I, 1) = " "
Next I
Text2.Text = AX
Return

123
End Sub


Private Sub Timer1_Timer()
Open SPATH$ + "STATUS" For Input As #5
Input #5, Q$
If Q$ = "OFF" Then T = MsgBox("SERVER TERMINATED SESSION.", vbOKOnly, "BYE"): Call CLEA: End
Close
End Sub


Private Sub Timer2_Timer()
Static PUSSY
Z = Text1.FontSize
TK = 10 / Z
TK = (TK * 18) - 2
LL = FileLen(SPATH$ + "TEXT.TXT")
If SEX = 0 Then LLL = LL
SEX = 1
If LL = 0 Then GoTo 7
If LLL = LL Then GoTo 7
CCC = CCC + 1
If CCC >= TK Then Text1.Text = "": CCC = 1: SHIT = 1: PPP = 1
Open SPATH$ + "TEXT.TXT" For Input As #6
Do
Line Input #6, TTT$
Loop Until (EOF(6))
Call ROY2(TTT$)
TTT$ = XXX2$
AAD$ = TTT$
11221
If WORDS$ <> "ON" Then GoTo 5656
If FileLen("C:\CHAT\LIST.TXT") = 0 Then GoTo 5656

Open "C:\CHAT\LIST.TXT" For Input As #448
Do
Input #448, HUH$
UL = Len(HUH$)
If InStr(1, UCase$(AAD$), UCase$(HUH$)) <> 0 Then Mid$(AAD$, InStr(1, UCase$(AAD$), UCase$(HUH$)), UL) = String$(UL, "*"): TTT$ = AAD$: Close 448: GoTo 11221
Loop Until (EOF(448))
Close #448

5656

AA$ = TTT$ + Text3.Text
Mid$(AA$, Len(AA$) - 2, 1) = " "
Text4.Text = Text4.Text + AA$
Text1.Text = Text1.Text + AA$
If POPUP$ = "ON" And Form1.WindowState = 1 Then Beep: Form1.WindowState = 0
Close
LLL = LL
If PUSSY = 1 Then PUSSY = 0: GoTo 7
If ANS$ = "ON" Then Call ROY(MYNAME$ + ": " + MES$ + "  (AUTOANSWER)"): VBXC$ = XXX$: Open SPATH$ + "TEXT.TXT" For Append As #2: Print #2, VBXC$: Close: PUSSY = 1
7
If Form1.WindowState = 1 Then Call CAP

End Sub


Private Sub Timer3_Timer()
On Error GoTo 33
If MODE$ = "CLIENT" Then Timer3.Enabled = False
If PASS$ = "OFF" Then Timer3.Enabled = False
Open SPATH$ + "PASSCODE" For Input As #1
Line Input #1, D$
Close
Call ROY2(D$)
D$ = XXX2$
If D$ = PASS$ Then GoTo 44
33 FF = MsgBox("SECURITY BREACH DETECTED", vbOKOnly, "SECURITY BLOCK"): End
44
End Sub

Private Sub Timer4_Timer()
L = FileLen(SPATH$ + "BEEP.TXT")
If L = 0 Then GoTo 6
If L = LLL2 Then GoTo 6
Beep
LLL2 = L
6


End Sub


Private Sub Timer5_Timer()
Static FG, YU

If FG = 0 Then Form1.Icon = F0
If FG = 1 Then Form1.Icon = F1
If FG = 2 Then Form1.Icon = F2
If FG = 3 Then Form1.Icon = F3
If FG = 4 Then Form1.Icon = F4

FG = FG + 1
If FG = 5 Then FG = 0

If Form1.WindowState = 0 Then Form1.Caption = "CHAT MANIAC by " + Chr$(82) + Chr$(111) + Chr$(121) + " " + Chr$(77) + Chr$(97) + Chr$(115) + Chr$(115) + Chr$(97) + Chr$(97) + Chr$(100)

YU = YU + 1
If YU = 8 Then YU = 1
If YU = 1 Then Image1.Picture = LO.Picture
If YU = 4 Then Image1.Picture = LF.Picture


End Sub


Private Sub Timer6_Timer()
File1.Path = "C:\CHAT\MESSAGES"
File1.Refresh
I = File1.ListCount
If I > II Then f = MsgBox("YOU HAVE MAIL", vbOKOnly, "CHAT MAIL")
II = I
End Sub

Private Sub VOICE_Click()

End Sub

Private Sub VOICEMAIL_Click()
voice.Show
End Sub


