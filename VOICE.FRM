VERSION 5.00
Begin VB.Form voice 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Voice mail sender/checker"
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   Icon            =   "voice.frx":0000
   LinkTopic       =   "Form12"
   MaxButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command3 
      Caption         =   "NEW"
      Height          =   375
      Left            =   3840
      TabIndex        =   7
      Top             =   1245
      Width           =   705
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   1110
      TabIndex        =   6
      Top             =   2700
      Width           =   3435
   End
   Begin VB.CommandButton Command2 
      Caption         =   "SEND"
      Height          =   345
      Left            =   3840
      TabIndex        =   4
      Top             =   1920
      Width           =   720
   End
   Begin VB.CommandButton Command1 
      Caption         =   "PLAY"
      Height          =   360
      Left            =   3840
      TabIndex        =   2
      Top             =   600
      Width           =   705
   End
   Begin VB.FileListBox File1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFC0C0&
      Height          =   1650
      Left            =   1995
      Pattern         =   "*.wav"
      TabIndex        =   1
      Top             =   630
      Width           =   1575
   End
   Begin VB.DirListBox Dir1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFC0C0&
      Height          =   1665
      Left            =   195
      TabIndex        =   0
      Top             =   630
      Width           =   1545
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      Caption         =   "TO :"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   375
      Left            =   330
      TabIndex        =   5
      Top             =   2685
      Width           =   540
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "VOICE MAIL :"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   375
      Left            =   150
      TabIndex        =   3
      Top             =   135
      Width           =   1920
   End
End
Attribute VB_Name = "voice"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
f = Shell("START " + File1.Path + "\" + File1.filename, vbMinimizedFocus)
End Sub

Private Sub Command2_Click()
On Error Resume Next
FileCopy File1.Path + "\" + File1.filename, "\\" + Combo1.Text + "\CHAT\MESSAGES\" + File1.filename
If Err = 76 Then KLM = MsgBox("MAIL FAILED !", vbCritical, "Error") Else KML = MsgBox("MAIL SENT.", vbOKOnly, "VOICE")
Err = 0

End Sub

Private Sub Command3_Click()
KLM = Shell("SNDREC32", vbNormalFocus)
End Sub

Private Sub Dir1_Change()
File1.Path = Dir1.Path
End Sub

Private Sub Form_Load()
Dir1.Path = "c:\chat\messages"
Open "c:\chat\dhistory.txt" For Input As #89
Counter = 0
Do
If EOF(89) Then Exit Do
Line Input #89, listitem$
Combo1.List(Counter) = listitem$
Counter = Counter + 1
Loop Until EOF(89)
Counter = 0
Close #89
Combo1.Text = Combo1.List(0)
End Sub
