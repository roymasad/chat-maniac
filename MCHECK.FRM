VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.1#0"; "RICHTX32.OCX"
Begin VB.Form MCHECK 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Mail checker"
   ClientHeight    =   2925
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4080
   Icon            =   "MCHECK.frx":0000
   LinkTopic       =   "Form12"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2925
   ScaleWidth      =   4080
   StartUpPosition =   2  'CenterScreen
   Begin RichTextLib.RichTextBox TXT 
      Height          =   2415
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Visible         =   0   'False
      Width           =   3855
      _ExtentX        =   6800
      _ExtentY        =   4260
      _Version        =   327680
      BackColor       =   0
      Enabled         =   -1  'True
      ReadOnly        =   -1  'True
      ScrollBars      =   2
      TextRTF         =   $"MCHECK.frx":0442
   End
   Begin VB.CommandButton Command4 
      Caption         =   "CLOSE"
      Height          =   255
      Left            =   1320
      TabIndex        =   6
      Top             =   2640
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "CANCEL"
      Height          =   375
      Left            =   2520
      TabIndex        =   3
      Top             =   2160
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "DELETE"
      Height          =   375
      Left            =   2520
      TabIndex        =   2
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "VIEW"
      Height          =   375
      Left            =   2520
      TabIndex        =   1
      Top             =   480
      Width           =   1335
   End
   Begin VB.FileListBox File1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00C0C0C0&
      Height          =   2040
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   1695
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Select message :"
      ForeColor       =   &H00C0C0C0&
      Height          =   255
      Left            =   240
      TabIndex        =   5
      Top             =   120
      Width           =   1695
   End
End
Attribute VB_Name = "MCHECK"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Len(File1.filename) = 0 Then GoTo 4
If UCase$(Trim$(Right$(File1.filename, 3))) = "WAV" Then voice.Show: GoTo 4
TXT.filename = "C:\CHAT\MESSAGES\" + File1.filename
TXT.Visible = True
TXT.SelColor = File1.ForeColor
TXT.Text = TXT.Text + ""
Command4.Visible = True
4
End Sub

Private Sub Command2_Click()
If Len(File1.filename) = 0 Then GoTo 4
X = MsgBox("ARE YOU SURE ?", vbYesNo, "CHAT MAIL")
If X = vbNo Then GoTo 4
Kill "C:\CHAT\MESSAGES\" + File1.filename
File1.Refresh
4
End Sub

Private Sub Command3_Click()
Unload Me
End Sub

Private Sub Command4_Click()
Command4.Visible = False
TXT.Visible = False
End Sub

Private Sub Drive1_Change()
End Sub

Private Sub Form_Load()
File1.Path = "C:\CHAT\MESSAGES"
End Sub

