VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   3210
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4860
   LinkTopic       =   "Form3"
   ScaleHeight     =   3210
   ScaleWidth      =   4860
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text3 
      Height          =   615
      Left            =   1680
      TabIndex        =   5
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Calculate"
      Height          =   495
      Left            =   3240
      TabIndex        =   2
      Top             =   1800
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   1680
      TabIndex        =   1
      Top             =   360
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   1680
      TabIndex        =   0
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Result"
      Height          =   255
      Left            =   600
      TabIndex        =   6
      Top             =   1920
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   "Number 2"
      Height          =   255
      Left            =   600
      TabIndex        =   4
      Top             =   1200
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "Number 1"
      Height          =   255
      Left            =   600
      TabIndex        =   3
      Top             =   480
      Width           =   735
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Form3.Hide
    
    'Form4.Show
    
    'Form5.Show
    
    'Form6.Show
    
    'Form7.Show
    
    'Form8.Show
    
    'Form9.Show
    
    'Form10.Show
    
    'Form11.Show
    
    Form12.Show
    
End Sub
Private Sub Command1_Click()
    ' Add values from TextBox1 and TextBox2

    Dim Sum As Double

    Sum = Val(Text1.Text) + Val(Text2.Text)

    ' Display the result in Label1

    Text3.Text = Sum
End Sub
