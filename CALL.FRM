VERSION 5.00
Begin VB.Form CALL3 
   BackColor       =   &H00000000&
   Caption         =   "CHAT MANIAC"
   ClientHeight    =   3765
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4800
   Icon            =   "CALL.frx":0000
   LinkTopic       =   "Form12"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3765
   ScaleWidth      =   4800
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text2 
      BackColor       =   &H00000000&
      ForeColor       =   &H00C0C0C0&
      Height          =   285
      Left            =   1755
      TabIndex        =   0
      ToolTipText     =   "ENTER FILE NAME HERE"
      Top             =   195
      Width           =   1695
   End
   Begin VB.ComboBox Combo1 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      ItemData        =   "CALL.frx":0442
      Left            =   1080
      List            =   "CALL.frx":0444
      TabIndex        =   2
      ToolTipText     =   "WHERE TO SEND THE MAIL ?"
      Top             =   2700
      Width           =   2775
   End
   Begin VB.CommandButton Command2 
      Caption         =   "MAIL"
      Height          =   375
      Left            =   360
      TabIndex        =   3
      Top             =   3240
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CANCEL"
      Height          =   375
      Left            =   2520
      TabIndex        =   5
      Top             =   3240
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00C0C0C0&
      Height          =   1605
      Left            =   720
      MultiLine       =   -1  'True
      TabIndex        =   1
      ToolTipText     =   "ENTER MAIL CONTAINTS"
      Top             =   795
      Width           =   3495
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "MESSAGE :"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   225
      Left            =   1965
      TabIndex        =   7
      Top             =   555
      Width           =   1155
   End
   Begin VB.Label Label3 
      BackColor       =   &H00000000&
      Caption         =   "ADDRESS :"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   255
      Left            =   1920
      TabIndex        =   6
      Top             =   2400
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      Caption         =   "TITLE ...."
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   255
      Left            =   870
      TabIndex        =   4
      Top             =   210
      Width           =   945
   End
End
Attribute VB_Name = "CALL3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
On Error GoTo 667
Open "\\" + Combo1.Text + "\CHAT\" + "MESSAGES\" + Text2.Text For Output As #1
Print #1, Text1.Text
Close
X = MsgBox("MAIL SENT", vbOKOnly, "CHAT MAIL")
GoTo 3

667
X = MsgBox("MAIL NOT SENT", vbOKOnly, "CHAT MAIL")
Close
GoTo 3

3
Unload Me
End Sub


Private Sub Command3_Click()

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

