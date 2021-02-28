VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H80000007&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Connection process"
   ClientHeight    =   3120
   ClientLeft      =   2490
   ClientTop       =   2325
   ClientWidth     =   4410
   Icon            =   "CHATx3.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3120
   ScaleWidth      =   4410
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      BackColor       =   &H00000000&
      Caption         =   "CENSORED"
      ForeColor       =   &H00C0C0C0&
      Height          =   540
      Left            =   840
      TabIndex        =   6
      Top             =   2520
      Width           =   2895
      Begin VB.CommandButton Command3 
         Caption         =   "Edit list"
         Height          =   240
         Left            =   1200
         TabIndex        =   8
         Top             =   240
         Width           =   1455
      End
      Begin VB.CheckBox Check2 
         Caption         =   "Check2"
         Height          =   195
         Left            =   360
         TabIndex        =   7
         Top             =   240
         Width           =   195
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Caption         =   "CODED CHANNEL"
      ForeColor       =   &H00C0C0C0&
      Height          =   615
      Left            =   840
      TabIndex        =   5
      Top             =   1920
      Width           =   2895
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
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   480
         PasswordChar    =   "*"
         TabIndex        =   3
         ToolTipText     =   "SET PASSCODE"
         Top             =   240
         Width           =   2295
      End
      Begin VB.CheckBox Check1 
         BackColor       =   &H00000000&
         Caption         =   "Check1"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   255
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "CLIENT"
      Height          =   615
      Left            =   2400
      TabIndex        =   1
      ToolTipText     =   "PRESS HERE TO JOIN A CHAT"
      Top             =   1080
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SERVER"
      Height          =   615
      Left            =   360
      TabIndex        =   0
      ToolTipText     =   "PRESS HERE TO START YOUR OWN CHAT SESSION"
      Top             =   1080
      Width           =   1695
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "CONNECTION TYPE :"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   495
      Left            =   825
      TabIndex        =   4
      ToolTipText     =   "WHAT TYPE OF CONNECTION ARE YOU LOOKING FOR ????"
      Top             =   360
      Width           =   3180
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

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

Private Sub Check1_Click()
If Check1.Value = 0 Then Text1.Enabled = False: PS = 0: Text1.Text = "": PASS$ = "OFF"
If Check1.Value = 1 Then Text1.Enabled = True: PS = 1: Text1.SetFocus

End Sub

Private Sub Command1_Click()
MODE$ = "SERVER"
SPATH$ = "C:\CHAT\"
Open SPATH$ + "STATUS" For Output As #1
Print #1, "ON"
Close
If PS = 1 Then PASS$ = Text1.Text: Call ROY(PASS$): PASS$ = XXX$
If PS = 1 Then Open SPATH$ + "PASSCODE" For Output As #1: Print #1, PASS$: Close
If PS = 1 Then Call ROY2(PASS$): PASS$ = XXX2$
If Check2.Value = 1 Then WORDS$ = "ON"
Unload Me
End Sub

Private Sub Command2_Click()
MODE$ = "CLIENT"
Form6.Show vbModal
If PS = 1 Then PASS$ = Text1.Text
If PS = 0 Then PASS$ = "OFF"
If Check2.Value = 1 Then WORDS$ = "ON"
Unload Me

End Sub

Private Sub Command3_Click()
DE = Shell("START C:\CHAT\LIST.TXT", vbHide)
End Sub


Private Sub Form_Load()
PASS$ = "OFF"
SPATH$ = "C:\"
End Sub

Private Sub Timer1_Timer()
If Check1.Value = 0 Then Text1.Enabled = False: PS = 0: Text1.Text = "": PASS$ = "OFF"
If Check1.Value = 1 Then Text1.Enabled = True: PS = 1


End Sub

