VERSION 5.00
Begin VB.Form Form10 
   Caption         =   "Form10"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form10"
   ScaleHeight     =   3135
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Who Is GOAT?"
      Height          =   855
      Left            =   2760
      TabIndex        =   3
      Top             =   960
      Width           =   1335
   End
   Begin VB.CheckBox Check3 
      Caption         =   "Antony GOAT"
      Height          =   615
      Left            =   360
      TabIndex        =   2
      Top             =   1920
      Width           =   1455
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Lionel Messi"
      Height          =   615
      Left            =   360
      TabIndex        =   1
      Top             =   960
      Width           =   1455
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Cristiano Ronaldo"
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   1455
   End
End
Attribute VB_Name = "Form10"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    If Check1.Value = 1 Then

        MsgBox ("Wrong Answer")

    ElseIf Check2.Value = 1 Then

        MsgBox ("Wrong Answer")

    Else

        MsgBox ("Yeah, Antony is the real GOAT")

    End If
End Sub
