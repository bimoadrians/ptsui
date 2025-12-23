VERSION 5.00
Begin VB.Form Form7 
   Caption         =   "Form7"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form7"
   ScaleHeight     =   3135
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Show Image"
      Height          =   375
      Left            =   1320
      TabIndex        =   0
      Top             =   2760
      Width           =   2175
   End
   Begin VB.Image Image1 
      Height          =   2655
      Left            =   0
      Top             =   0
      Width           =   4695
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Image1.Picture = LoadPicture("C:\fileBimo\backupProgram\suiapps\SUI\2025\Logo SUI\ptsui.jpeg")
End Sub
