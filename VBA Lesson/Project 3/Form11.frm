VERSION 5.00
Begin VB.Form Form11 
   Caption         =   "Form11"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form11"
   ScaleHeight     =   3135
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.OptionButton Option3 
      Caption         =   "Antony GOAT"
      Height          =   495
      Left            =   240
      TabIndex        =   3
      Top             =   2160
      Width           =   1575
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Lionel Messi"
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   1200
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Who is GOAT?"
      Height          =   855
      Left            =   2760
      TabIndex        =   1
      Top             =   1080
      Width           =   1455
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Cristiano Ronaldo"
      Height          =   615
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1575
   End
End
Attribute VB_Name = "Form11"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    If Option1.Value = True Then

        MsgBox ("Wrong Answer")

    ElseIf Option2.Value = True Then

        MsgBox ("Wrong Answer")

    Else

        MsgBox ("Yeah, Antony is the real GOAT")

    End If
End Sub
