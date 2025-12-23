VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   ScaleHeight     =   3135
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Foreground"
      Height          =   495
      Left            =   3240
      TabIndex        =   1
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Background"
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Label Label1 
      Height          =   615
      Left            =   3120
      TabIndex        =   2
      Top             =   1680
      Width           =   1095
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Form2.Show

    Print "Welcome to Visual Basic Tutorial"
End Sub
Private Sub Form_Activate()
    Print
    
    Print 20 + 10

    Print 20 - 10

    Print 20 * 10

    Print 20 / 10
    
    Print
    
    Dim A, B, C, D, E As String

    A = "Tom "

    B = "likes "

    C = "to "

    D = "eat "

    E = "burger"

    ' Using + operator

    ' Print A + B + C + D + E

    ' Using & operator

    Print A & B & C & D & E

End Sub
Private Sub Command1_Click()
    ' Change form background color randomly

    Randomize

    Dim R, G, B As Integer
    
    R = Int(Rnd() * 256)
    
    G = Int(Rnd() * 256)
    
    B = Int(Rnd() * 256)

    Form2.BackColor = RGB(R, G, B)
End Sub
Private Sub Command2_Click()
    ' Change label foreground color randomly

    Randomize
    Dim R, G, B As Integer

    R = Int(Rnd() * 256)
    
    G = Int(Rnd() * 256)
    
    B = Int(Rnd() * 256)

    Label1.ForeColor = RGB(R, G, B)

    Label1.Caption = "Foreground Color Changed"
End Sub

