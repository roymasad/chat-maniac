VERSION 5.00
Begin VB.Form Form10 
   BackColor       =   &H00000000&
   Caption         =   "Loging off.."
   ClientHeight    =   1590
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3300
   Icon            =   "CHATx10.frx":0000
   LinkTopic       =   "Form10"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1590
   ScaleWidth      =   3300
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "NO"
      Height          =   375
      Left            =   1920
      TabIndex        =   0
      ToolTipText     =   "COOL"
      Top             =   960
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "YES"
      Height          =   375
      Left            =   360
      TabIndex        =   1
      ToolTipText     =   "NOOOO"
      Top             =   960
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Wanna Quit ??"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   390
      Left            =   975
      TabIndex        =   2
      Top             =   390
      Width           =   2250
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   360
      MouseIcon       =   "CHATx10.frx":0442
      MousePointer    =   99  'Custom
      Picture         =   "CHATx10.frx":074C
      ToolTipText     =   "HELLO"
      Top             =   360
      Width           =   480
   End
End
Attribute VB_Name = "Form10"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


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

Private Sub Command1_Click()

If MODE$ = "CLIENT" Then Open SPATH$ + "TEXT.TXT" For Append As #1: G$ = MYNAME$ + " HAS LEFT THE CHAT ROOM ...": Call ROY(G$): G$ = XXX$: Print #1, G$: Close: Call CLEA: End
If MODE$ = "SERVER" Then

Open SPATH$ + "STATUS" For Output As #2
Print #2, "OFF"
Close

Open SPATH$ + "BEEP.TXT" For Output As #1: Close #1

Open SPATH$ + "PASSCODE" For Output As #2: Print #2, Chr$(160) + Chr$(135) + Chr$(160): Close

Open SPATH$ + "TEXT.TXT" For Output As #3
Close
Open SPATH$ + "NAMES" For Output As #2
Close

Open "C:\CHAT\TEMP\GINNY" For Output As #1
Print #1,
Close
Kill ("C:\CHAT\TEMP\*.*")

End


End If

End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Image1_Click()
Image1.Picture = Form1.F2.Picture
End Sub

