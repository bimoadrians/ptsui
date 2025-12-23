VERSION 5.00
Begin VB.Form Form12 
   Caption         =   "Form12"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   10170
   LinkTopic       =   "Form12"
   ScaleHeight     =   3135
   ScaleWidth      =   10170
   StartUpPosition =   3  'Windows Default
   Begin VB.OptionButton Option6 
      Caption         =   "Rounded Square"
      Height          =   615
      Left            =   2160
      TabIndex        =   5
      Top             =   2280
      Width           =   1815
   End
   Begin VB.OptionButton Option5 
      Caption         =   "Rounded Rectangle"
      Height          =   735
      Left            =   2160
      TabIndex        =   4
      Top             =   1200
      Width           =   1815
   End
   Begin VB.OptionButton Option4 
      Caption         =   "Circle"
      Height          =   615
      Left            =   2160
      TabIndex        =   3
      Top             =   240
      Width           =   1815
   End
   Begin VB.OptionButton Option3 
      Caption         =   "Oval"
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   2280
      Width           =   1575
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Square"
      Height          =   735
      Left            =   240
      TabIndex        =   1
      Top             =   1200
      Width           =   1575
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Rectangle"
      Height          =   615
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1575
   End
   Begin VB.Shape Shape1 
      Height          =   2895
      Left            =   4200
      Top             =   120
      Width           =   5775
   End
End
Attribute VB_Name = "Form12"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Private Sub Command1_Click()
'    If Option1.Value = True Then
'
'        Shape1.Shape = 0
'
'    ElseIf Option2.Value = True Then
'
'        Shape1.Shape = 1
'
'    ElseIf Option3.Value = True Then
'
'        Shape1.Shape = 2
'
'    ElseIf Option4.Value = True Then
'
'        Shape1.Shape = 3
'
'    ElseIf Option5.Value = True Then
'
'        Shape1.Shape = 4
'
'    Else
'
'        Shape1.Shape = 5
'
'    End If
'End Sub
Private Sub Option1_Click()
    If Option1.Value = True Then

        Shape1.Shape = 0
        
    End If
End Sub
Private Sub Option2_Click()
    If Option2.Value = True Then

        Shape1.Shape = 1
        
    End If
End Sub
Private Sub Option3_Click()
    If Option3.Value = True Then

        Shape1.Shape = 2
        
    End If
End Sub
Private Sub Option4_Click()
    If Option4.Value = True Then

        Shape1.Shape = 3
        
    End If
End Sub
Private Sub Option5_Click()
    If Option5.Value = True Then

        Shape1.Shape = 4
        
    End If
End Sub
Private Sub Option6_Click()
    If Option6.Value = True Then

        Shape1.Shape = 5
        
    End If
End Sub
