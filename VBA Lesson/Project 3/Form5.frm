VERSION 5.00
Begin VB.Form Form5 
   Caption         =   "Form5"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form5"
   ScaleHeight     =   3135
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Show Password"
      Height          =   495
      Left            =   2280
      TabIndex        =   2
      Top             =   1680
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   615
      IMEMode         =   3  'DISABLE
      Left            =   2160
      PasswordChar    =   "*"
      TabIndex        =   0
      Top             =   840
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "Enter Your Password"
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   960
      Width           =   1575
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Dim yourpassword As String

    yourpassword = Text1.Text

    MsgBox ("Your password is: " & yourpassword)
End Sub

