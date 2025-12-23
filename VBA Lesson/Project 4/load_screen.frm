VERSION 5.00
Begin VB.Form loading_screen 
   Caption         =   "Loading Screen"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   10485
   LinkTopic       =   "loading_screen"
   ScaleHeight     =   3135
   ScaleWidth      =   10485
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   120
      Top             =   120
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "PT. SAHABAT UNGGUL INTERNATIONAL"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   2640
      TabIndex        =   1
      Top             =   600
      Width           =   5145
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Loading...."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H0000C000&
      FillStyle       =   0  'Solid
      Height          =   495
      Left            =   240
      Top             =   2160
      Width           =   50
   End
   Begin VB.Image Image1 
      Height          =   540
      Left            =   1920
      Picture         =   "load_screen.frx":0000
      Top             =   480
      Width           =   645
   End
End
Attribute VB_Name = "loading_screen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
    Shape1.Width = Shape1.Width + 200
    If (Shape1.Width > 10000) Then
        Timer1.Enabled = False
        loading_screen.Hide
        'MsgBox "Hello There"
        login.Show
    End If
End Sub
