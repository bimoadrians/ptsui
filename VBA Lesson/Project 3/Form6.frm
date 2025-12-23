VERSION 5.00
Begin VB.Form Form6 
   Caption         =   "Form6"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form6"
   ScaleHeight     =   3135
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Height          =   2775
      Left            =   0
      ScaleHeight     =   2715
      ScaleWidth      =   4635
      TabIndex        =   1
      Top             =   0
      Width           =   4695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Show Picture"
      Height          =   375
      Left            =   1560
      TabIndex        =   0
      Top             =   2760
      Width           =   1695
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

    Picture1.Picture = LoadPicture("C:\fileBimo\backupProgram\suiapps\SUI\2025\Logo SUI\ptsui.jpeg")
    
End Sub

