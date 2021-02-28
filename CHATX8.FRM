VERSION 5.00
Begin VB.Form Form8 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Fonts"
   ClientHeight    =   3135
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4785
   Icon            =   "CHATx8.frx":0000
   LinkTopic       =   "Form8"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3135
   ScaleWidth      =   4785
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   0
      Top             =   2760
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   675
      Left            =   2760
      TabIndex        =   1
      Text            =   "RED"
      ToolTipText     =   "SAMPLE"
      Top             =   2040
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "CANCEL"
      Height          =   495
      Left            =   3000
      TabIndex        =   3
      Top             =   1200
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ACCEPT"
      Height          =   495
      Left            =   3000
      TabIndex        =   2
      Top             =   360
      Width           =   1335
   End
   Begin VB.ListBox List1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   2205
      ItemData        =   "CHATx8.frx":0442
      Left            =   360
      List            =   "CHATx8.frx":0444
      Sorted          =   -1  'True
      TabIndex        =   0
      ToolTipText     =   "FONT LIST"
      Top             =   480
      Width           =   1695
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "FONTS :"
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
      Height          =   330
      Left            =   360
      TabIndex        =   4
      Top             =   75
      Width           =   1695
   End
End
Attribute VB_Name = "Form8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Text1.Font = Text1.Font
Form5.Text1.Font = Text1.Font
Open "C:\CHAT\FONT" For Output As #4
Print #4, Text1.Font
Close

Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub List1_Click()
Text1.Font = List1.Text
End Sub

Private Sub Timer1_Timer()
Dim I
For I = 0 To Printer.FontCount - 1
If UCase$(Left$(Printer.Fonts(I), 7)) = "COURIER" Then GoTo 6
List1.AddItem Printer.Fonts(I)
6
Next I
Text1.ForeColor = Form1.Text1.ForeColor
Text1.BackColor = Form1.Text1.BackColor
Text1.Font = Form1.Text1.Font
Text1.FontBold = Form1.Text1.FontBold
Text1.FontItalic = Form1.Text1.FontItalic
Timer1.Enabled = False
End Sub
