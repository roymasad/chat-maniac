VERSION 5.00
Begin VB.Form Form5 
   BackColor       =   &H80000007&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "General settings"
   ClientHeight    =   5145
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4380
   Icon            =   "CHATx5.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5145
   ScaleWidth      =   4380
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command9 
      Caption         =   "Y"
      Height          =   255
      Left            =   360
      MouseIcon       =   "CHATx5.frx":0442
      MousePointer    =   99  'Custom
      TabIndex        =   12
      Top             =   4080
      Width           =   255
   End
   Begin VB.CommandButton Command4 
      Caption         =   "X"
      Height          =   255
      Left            =   360
      MouseIcon       =   "CHATx5.frx":074C
      MousePointer    =   99  'Custom
      TabIndex        =   11
      Top             =   3720
      Width           =   255
   End
   Begin VB.CheckBox Check4 
      BackColor       =   &H00000000&
      Caption         =   "Auto-Answer :"
      ForeColor       =   &H00C0C0C0&
      Height          =   255
      Left            =   360
      TabIndex        =   9
      Top             =   3240
      Width           =   1335
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   1800
      TabIndex        =   10
      ToolTipText     =   "AUTO MESSAGE"
      Top             =   3240
      Width           =   2295
   End
   Begin VB.CheckBox Check3 
      BackColor       =   &H00000000&
      Caption         =   "If minimized pop up on incoming message"
      ForeColor       =   &H00C0C0C0&
      Height          =   255
      Left            =   360
      TabIndex        =   8
      Top             =   2760
      Width           =   3255
   End
   Begin VB.CommandButton Command3 
      Caption         =   "FONTS"
      Height          =   255
      Left            =   1680
      TabIndex        =   1
      ToolTipText     =   "FONT LIST"
      Top             =   1080
      Width           =   975
   End
   Begin VB.CommandButton Command8 
      Caption         =   "CANCEL"
      Height          =   375
      Left            =   2520
      TabIndex        =   14
      Top             =   4560
      Width           =   1455
   End
   Begin VB.CommandButton Command7 
      Caption         =   "ACCEPT"
      Height          =   375
      Left            =   360
      TabIndex        =   13
      Top             =   4560
      Width           =   1455
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
      Height          =   855
      Left            =   360
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "CHATx5.frx":0A56
      ToolTipText     =   "THIS IS A TEXT SAMPLE OF YOUR GHANGES"
      Top             =   120
      Width           =   3615
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H80000007&
      Caption         =   "STYLE"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   975
      Left            =   1560
      TabIndex        =   18
      ToolTipText     =   "CHOOSE YOUR TEXT STYLE"
      Top             =   1440
      Width           =   1215
      Begin VB.CheckBox Check2 
         BackColor       =   &H00000000&
         Caption         =   "ITALIC"
         ForeColor       =   &H00C0C0C0&
         Height          =   195
         Left            =   120
         MaskColor       =   &H00FFFFFF&
         TabIndex        =   5
         Top             =   600
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         BackColor       =   &H00000000&
         Caption         =   "BOLD"
         ForeColor       =   &H00C0C0C0&
         Height          =   195
         Left            =   120
         TabIndex        =   4
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H80000007&
      Caption         =   "SIZE"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   1215
      Left            =   3240
      TabIndex        =   17
      ToolTipText     =   "CHOOSE THE TEXT SIZE"
      Top             =   1320
      Width           =   855
      Begin VB.CommandButton Command6 
         Caption         =   "--"
         Height          =   195
         Left            =   120
         TabIndex        =   7
         Top             =   720
         Width           =   615
      End
      Begin VB.CommandButton Command5 
         Caption         =   "+"
         Height          =   195
         Left            =   120
         TabIndex        =   6
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000007&
      Caption         =   "COLOR"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   1215
      Left            =   240
      TabIndex        =   15
      ToolTipText     =   "CHOOSE THE TEXT'S COLORS"
      Top             =   1320
      Width           =   855
      Begin VB.OptionButton Option2 
         BackColor       =   &H80000007&
         Caption         =   "Option2"
         Height          =   195
         Left            =   120
         TabIndex        =   20
         Top             =   885
         Value           =   -1  'True
         Width           =   255
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H80000007&
         Caption         =   "Option1"
         Height          =   255
         Left            =   480
         TabIndex        =   19
         Top             =   840
         Width           =   255
      End
      Begin VB.CommandButton Command2 
         Caption         =   "--"
         Height          =   195
         Left            =   120
         TabIndex        =   3
         Top             =   600
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         Caption         =   "+"
         Height          =   195
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      Caption         =   "Stop Chat Maniac from running at startup"
      ForeColor       =   &H00C0C0C0&
      Height          =   255
      Left            =   720
      TabIndex        =   21
      Top             =   4080
      Width           =   3015
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Make Chat Maniac run on windows startup"
      ForeColor       =   &H00C0C0C0&
      Height          =   255
      Left            =   720
      TabIndex        =   16
      Top             =   3720
      Width           =   3135
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Check1_Click()
If Check1.Value = 1 Then Text1.FontBold = True
If Check1.Value = 0 Then Text1.FontBold = False

End Sub

Private Sub Check2_Click()
If Check2.Value = 1 Then Text1.FontItalic = True
If Check2.Value = 0 Then Text1.FontItalic = False


End Sub


Private Sub Check4_Click()
If Check4.Value = 0 Then Text2.Enabled = False
If Check4.Value = 1 Then Text2.Enabled = True
End Sub

Private Sub Command1_Click()

If Option2.Value = True And C1 < 10 Then C1 = C1 + 1
If Option1.Value = True And C2 < 10 Then C2 = C2 + 1

If C1 = 1 Then Text1.ForeColor = Form1.L1.BorderColor
If C1 = 2 Then Text1.ForeColor = Form1.L2.BorderColor
If C1 = 3 Then Text1.ForeColor = Form1.L3.BorderColor
If C1 = 4 Then Text1.ForeColor = Form1.L4.BorderColor
If C1 = 5 Then Text1.ForeColor = Form1.L5.BorderColor
If C1 = 6 Then Text1.ForeColor = Form1.L6.BorderColor
If C1 = 7 Then Text1.ForeColor = Form1.L7.BorderColor
If C1 = 8 Then Text1.ForeColor = Form1.L8.BorderColor
If C1 = 9 Then Text1.ForeColor = Form1.L9.BorderColor
If C1 = 10 Then Text1.ForeColor = Form1.L10.BorderColor

If C2 = 1 Then Text1.BackColor = Form1.L1.BorderColor
If C2 = 2 Then Text1.BackColor = Form1.L2.BorderColor
If C2 = 3 Then Text1.BackColor = Form1.L3.BorderColor
If C2 = 4 Then Text1.BackColor = Form1.L4.BorderColor
If C2 = 5 Then Text1.BackColor = Form1.L5.BorderColor
If C2 = 6 Then Text1.BackColor = Form1.L6.BorderColor
If C2 = 7 Then Text1.BackColor = Form1.L7.BorderColor
If C2 = 8 Then Text1.BackColor = Form1.L8.BorderColor
If C2 = 9 Then Text1.BackColor = Form1.L9.BorderColor
If C2 = 10 Then Text1.BackColor = Form1.L10.BorderColor

End Sub

Private Sub Command2_Click()
If Option2.Value = True And C1 > 1 Then C1 = C1 - 1
If Option1.Value = True And C2 > 1 Then C2 = C2 - 1

If C1 = 1 Then Text1.ForeColor = Form1.L1.BorderColor
If C1 = 2 Then Text1.ForeColor = Form1.L2.BorderColor
If C1 = 3 Then Text1.ForeColor = Form1.L3.BorderColor
If C1 = 4 Then Text1.ForeColor = Form1.L4.BorderColor
If C1 = 5 Then Text1.ForeColor = Form1.L5.BorderColor
If C1 = 6 Then Text1.ForeColor = Form1.L6.BorderColor
If C1 = 7 Then Text1.ForeColor = Form1.L7.BorderColor
If C1 = 8 Then Text1.ForeColor = Form1.L8.BorderColor
If C1 = 9 Then Text1.ForeColor = Form1.L9.BorderColor
If C1 = 10 Then Text1.ForeColor = Form1.L10.BorderColor

If C2 = 1 Then Text1.BackColor = Form1.L1.BorderColor
If C2 = 2 Then Text1.BackColor = Form1.L2.BorderColor
If C2 = 3 Then Text1.BackColor = Form1.L3.BorderColor
If C2 = 4 Then Text1.BackColor = Form1.L4.BorderColor
If C2 = 5 Then Text1.BackColor = Form1.L5.BorderColor
If C2 = 6 Then Text1.BackColor = Form1.L6.BorderColor
If C2 = 7 Then Text1.BackColor = Form1.L7.BorderColor
If C2 = 8 Then Text1.BackColor = Form1.L8.BorderColor
If C2 = 9 Then Text1.BackColor = Form1.L9.BorderColor
If C2 = 10 Then Text1.BackColor = Form1.L10.BorderColor



End Sub


Private Sub Command3_Click()
Form8.Show vbModal
End Sub

Private Sub Command4_Click()
FileCopy "C:\CHAT\CHAT.EXE", Environ("WINDIR") + "STARTM~1\PROGRAMS\STARTUP\CHAT.EXE"
f = MsgBox("DONE !!!", vbOKOnly, "CHAT MANIAC")
End Sub

Private Sub Command5_Click()
If Text1.FontSize < 25 Then Text1.FontSize = Text1.FontSize + 3

End Sub


Private Sub Command6_Click()
If Text1.FontSize > 3 Then Text1.FontSize = Text1.FontSize - 3

End Sub


Private Sub Command7_Click()
Form1.Text1.FontSize = Form5.Text1.FontSize
Form1.Text1.ForeColor = Form5.Text1.ForeColor
Form1.Text1.BackColor = Form5.Text1.BackColor
Form1.Text1.FontBold = Form5.Text1.FontBold
Form1.Text1.FontItalic = Form5.Text1.FontItalic

If Check3.Value = 1 Then POPUP$ = "ON"
If Check3.Value = 0 Then POPUP$ = "OFF"
If Check4.Value = 1 Then MES$ = Text2.Text: ANS$ = "ON"
If Check4.Value = 0 Then ANS$ = "OFF"

Open "C:\CHAT\FONT2" For Output As #1
Print #1, Form5.Text1.BackColor
Print #1, Form5.Text1.ForeColor
Print #1, Form5.Text1.FontSize
Print #1, Form5.Text1.FontBold
Print #1, Form5.Text1.FontItalic
Print #1, POPUP$
Print #1, ANS$
Close

Open "C:\CHAT\MES" For Output As #1
If MES$ = "" Then MES$ = "XXX123"
Print #1, MES$
Close




Unload Me
End Sub

Private Sub Command8_Click()
Unload Me
End Sub

Private Sub Command9_Click()
On Error GoTo 3
Kill Environ("WINDIR") + "STARTM~1\PROGRAMS\STARTUP\CHAT.EXE"
3
f = MsgBox("DONE !!!", vbOKOnly, "CHAT MANIAC")
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 27 Then Unload Me

End Sub

Private Sub Form_Load()
If POPUP$ = "ON" Then Check3.Value = 1
Form5.Text1.FontSize = Form1.Text1.FontSize
Form5.Text1.ForeColor = Form1.Text1.ForeColor
Form5.Text1.BackColor = Form1.Text1.BackColor
Form5.Text1.FontBold = Form1.Text1.FontBold
Form5.Text1.FontItalic = Form1.Text1.FontItalic
Form5.Text1.Font = Form1.Text1.Font
If Form5.Text1.FontBold = True Then Check1.Value = 1
If Form5.Text1.FontItalic = True Then Check2.Value = 1

If ANS$ = "OFF" Then Check4.Value = 0: Text2.Enabled = False
If ANS$ = "ON" Then Check4.Value = 1: Text2.Enabled = True
Text2.Text = MES$
End Sub


