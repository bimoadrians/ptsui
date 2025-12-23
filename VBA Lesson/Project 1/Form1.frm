VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4785
   LinkTopic       =   "Form1"
   ScaleHeight     =   3135
   ScaleWidth      =   4785
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Tombol3 
      Caption         =   "Change Color"
      Height          =   495
      Left            =   3480
      TabIndex        =   3
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   240
      Width           =   975
   End
   Begin VB.CommandButton Tombol2 
      Caption         =   "Displaying Text"
      Height          =   495
      Left            =   1800
      TabIndex        =   1
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton Tombol1 
      Caption         =   "Hello World"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   2400
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Tombol1_Click()
    MsgBox "Hello World"
End Sub

Private Sub Tombol2_Click()
    Dim userName As String

    userName = Text1.Text

    MsgBox "Hello, " & userName & "!"
End Sub

Private Sub Tombol3_Click()
    ' Change form background color to yellow
    Form1.BackColor = vbYellow

    ' Display confirmation message
    MsgBox "Form background color changed!"
End Sub
