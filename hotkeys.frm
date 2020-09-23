VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "HOT KEYS!"
   ClientHeight    =   3555
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5175
   LinkTopic       =   "Form1"
   ScaleHeight     =   3555
   ScaleWidth      =   5175
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   4200
      Top             =   2880
   End
   Begin VB.Label Label1 
      Caption         =   "Control+Q=VB"
      Height          =   255
      Left            =   1560
      TabIndex        =   0
      Top             =   480
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer

Private Sub Form_Load()
Form1.Hide
End Sub

Private Sub Timer1_Timer()
If GetAsyncKeyState(vbKeyControl) And GetAsyncKeyState(vbKeyQ) Then
Shell ("C:\Program Files\Microsoft Visual Studio\VB98\vb6.exe")
End If
End Sub
