VERSION 5.00
Begin VB.Form SPLASH 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   2805
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   5175
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "SPLASH.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2805
   ScaleWidth      =   5175
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   2715
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   4905
      Begin VB.Timer Timer1 
         Interval        =   500
         Left            =   4320
         Top             =   120
      End
      Begin VB.Label trun 
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   1215
         TabIndex        =   7
         Top             =   2325
         Width           =   705
      End
      Begin VB.Label Label6 
         BackColor       =   &H00000000&
         Caption         =   "MASSAAD"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   600
         Left            =   2100
         TabIndex        =   6
         Top             =   1770
         Width           =   2340
      End
      Begin VB.Label Label3 
         BackColor       =   &H00000000&
         Caption         =   "ROY"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0080FF80&
         Height          =   615
         Left            =   1335
         TabIndex        =   3
         Top             =   1560
         Width           =   1005
      End
      Begin VB.Label Label2 
         BackColor       =   &H00000000&
         Caption         =   "By"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Left            =   2280
         TabIndex        =   2
         Top             =   1200
         Width           =   495
      End
      Begin VB.Label Label1 
         BackColor       =   &H00000000&
         Caption         =   "CHAT MANIAC"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   27.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFC0C0&
         Height          =   765
         Left            =   360
         TabIndex        =   1
         Top             =   465
         Width           =   4260
      End
      Begin VB.Shape Shape2 
         FillStyle       =   0  'Solid
         Height          =   1020
         Left            =   345
         Top             =   690
         Width           =   1995
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         FillStyle       =   5  'Downward Diagonal
         Height          =   1230
         Left            =   30
         Shape           =   2  'Oval
         Top             =   240
         Width           =   2415
      End
      Begin VB.Label Label5 
         BackColor       =   &H00000000&
         Caption         =   "Times run :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   255
         Left            =   180
         TabIndex        =   5
         Top             =   2355
         Width           =   990
      End
      Begin VB.Label Label4 
         BackColor       =   &H00000000&
         Caption         =   "VERSION 1.3"
         ForeColor       =   &H00E0E0E0&
         Height          =   255
         Left            =   3765
         TabIndex        =   4
         Top             =   2355
         Width           =   1095
      End
   End
End
Attribute VB_Name = "SPLASH"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub Form_KeyPress(KeyAscii As Integer)
SPLASH.Timer1.Enabled = False
    Unload Me
End Sub

Private Sub Frame1_Click()
SPLASH.Timer1.Enabled = False
    Unload Me
End Sub

Private Sub Label1_Click()
SPLASH.Timer1.Enabled = False
    Unload Me
End Sub

Private Sub Label2_Click()
SPLASH.Timer1.Enabled = False
    Unload Me
End Sub


Private Sub Label3_Click()
SPLASH.Timer1.Enabled = False
    Unload Me
End Sub


Private Sub Timer1_Timer()
Static D
D = D + 1
If D = 3 Then SPLASH.Timer1.Enabled = False: Unload Me
End Sub


