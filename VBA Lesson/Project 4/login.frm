VERSION 5.00
Begin VB.Form login 
   Caption         =   "Login"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   10485
   LinkTopic       =   "login"
   ScaleHeight     =   3135
   ScaleWidth      =   10485
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox pass 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      IMEMode         =   3  'DISABLE
      Left            =   3840
      PasswordChar    =   "*"
      TabIndex        =   5
      Top             =   1800
      Width           =   3615
   End
   Begin VB.ComboBox user 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   3840
      TabIndex        =   4
      Text            =   "Silahkan pilih username"
      Top             =   960
      Width           =   3615
   End
   Begin VB.CommandButton submit 
      Caption         =   "Submit"
      Height          =   375
      Left            =   6360
      TabIndex        =   3
      Top             =   2400
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   540
      Left            =   1920
      Picture         =   "login.frx":0000
      Top             =   120
      Width           =   645
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Password"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2160
      TabIndex        =   2
      Top             =   1800
      Width           =   1335
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Username"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2160
      TabIndex        =   1
      Top             =   960
      Width           =   1335
   End
   Begin VB.Label Label1 
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
      TabIndex        =   0
      Top             =   240
      Width           =   5145
   End
End
Attribute VB_Name = "login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    user.AddItem "Admin"

    user.AddItem "Bimo"

    user.AddItem "User"
End Sub
Private Sub submit_Click()
    If (user.Text = "Admin" And pass.Text = "superuser") Then
        login.Hide
        index.Show
    ElseIf (user.Text = "Bimo" And pass.Text = "bimo321") Then
        login.Hide
        index.Show
    ElseIf (user.Text = "user" And pass.Text = "user321") Then
        login.Hide
        index.Show
    ElseIf (user.Text = "Silahkan pilih username" And pass.Text = "") Then
        MsgBox "Username or Password cannot empty"
    ElseIf (user.Text = "" And pass.Text = "") Then
        MsgBox "Username or Password cannot empty"
    Else
        MsgBox "Username or Password incorrect"
    End If
End Sub
