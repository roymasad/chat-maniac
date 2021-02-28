VERSION 5.00
Begin VB.Form Form6 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Connecting as a client ..."
   ClientHeight    =   2655
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   Icon            =   "CHATx6.frx":0000
   LinkTopic       =   "Form6"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2655
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Cancel          =   -1  'True
      Caption         =   "CANCEL"
      Height          =   375
      Left            =   2760
      TabIndex        =   2
      ToolTipText     =   "PRESS HERE TO CANCEL"
      Top             =   1920
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CONNECT"
      Height          =   375
      Left            =   240
      TabIndex        =   1
      ToolTipText     =   "PRESS HERE TO CALL"
      Top             =   1920
      Width           =   1935
   End
   Begin VB.ComboBox Combo1 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      ItemData        =   "CHATx6.frx":0442
      Left            =   960
      List            =   "CHATx6.frx":0444
      TabIndex        =   0
      ToolTipText     =   "CHOOSE THE SERVER'S SHARED C:\CHAT FOLDER"
      Top             =   960
      Width           =   2775
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "SERVER'S PC NAME :"
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
      Height          =   375
      Left            =   885
      TabIndex        =   3
      Top             =   360
      Width           =   2985
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
warn = 0
Open "c:\chat\dhistory.txt" For Input As #89
ext = 0
If EOF(89) Then ext = 1
Do
If ext = 1 Then Exit Do
Line Input #89, tester$
If UCase$(tester$) = UCase$(Combo1.Text) Then warn = 1
Loop Until EOF(89)
Close #89
ext = 0
Open "c:\chat\dhistory.txt" For Append As #89
If warn = 0 Then Print #89, Combo1.Text
Close #89
warn = 0
SPATH$ = "\\" + Combo1.Text + "\CHAT\"
Open "C:\CHAT\PATH" For Output As #4
Print #4, Combo1.Text
Close

Unload Me
End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub Form_Load()
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


