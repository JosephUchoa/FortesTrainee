object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 153
    Height = 25
    Caption = 'Gerar Notas'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 39
    Width = 153
    Height = 184
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object StaticText1: TStaticText
    Left = 176
    Top = 39
    Width = 94
    Height = 17
    Caption = 'M'#233'dia dos Alunos: '
    TabOrder = 2
  end
  object StaticText2: TStaticText
    Left = 176
    Top = 63
    Width = 63
    Height = 17
    Caption = 'Maior Nota: '
    TabOrder = 3
  end
  object StaticText3: TStaticText
    Left = 176
    Top = 86
    Width = 67
    Height = 17
    Caption = 'Menor Nota: '
    TabOrder = 4
  end
end
