VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.1#0"; "COMDLG32.OCX"
Begin VB.Form Form2 
   BackColor       =   &H80000007&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Welcome to Chat Maniac"
   ClientHeight    =   1650
   ClientLeft      =   3165
   ClientTop       =   3120
   ClientWidth     =   3180
   Icon            =   "CHATx2.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1650
   ScaleWidth      =   3180
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin MSComDlg.CommonDialog cd1 
      Left            =   60
      Top             =   90
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   327680
      DialogTitle     =   "Choose your picture"
      FileName        =   "*.bmp;*.jpg;*.gif;*.ico"
      InitDir         =   "c:\chat\PICS"
   End
   Begin VB.CommandButton Command3 
      Caption         =   "PIC"
      Height          =   420
      Left            =   2595
      TabIndex        =   4
      Top             =   585
      Width           =   405
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   2730
      Top             =   60
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   240
      MaxLength       =   28
      TabIndex        =   0
      Top             =   600
      Width           =   2250
   End
   Begin VB.CommandButton Command2 
      Caption         =   "CANCEL"
      Height          =   375
      Left            =   1800
      TabIndex        =   2
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "LOGIN"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   " ENTER YOUR NAME "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   375
      Left            =   240
      TabIndex        =   3
      ToolTipText     =   "WHAT'S YOUR NAME ?"
      Top             =   120
      Width           =   2835
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
MYNAME$ = Text1.Text
If MYNAME$ = "" Then MYNAME$ = "GUEST"
Unload Me
End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub Command3_Click()
cd1.ShowOpen
If cd1.filename <> "*.bmp;*.jpg;*.gif;*.ico" Then PIC$ = cd1.filename
cd1.filename = "*.bmp;*.jpg;*.gif;*.ico"
End Sub

 
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 27 Then End
End Sub

Private Sub Form_Load()
If Left$(Date$, 5) = "12-03" Then Text1.Text = "HELLO FROM " + Chr$(82) + Chr$(79) + Chr$(89)
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then Command1.Value = True
End Sub


Private Sub Timer1_Timer()
Text1.SetFocus
Timer1.Enabled = False

End Sub


