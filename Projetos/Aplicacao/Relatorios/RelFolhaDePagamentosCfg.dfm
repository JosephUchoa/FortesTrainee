object FrmFolhaDePagamentosCfg: TFrmFolhaDePagamentosCfg
  Left = 0
  Top = 0
  Caption = 'Folha De Pagamentos'
  ClientHeight = 70
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblMesAno: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 13
    Caption = 'M'#234's / Ano'
  end
  object BtnCancelar: TButton
    Left = 192
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = BtnCancelarClick
  end
  object EdtMesAno: TMaskEdit
    Left = 8
    Top = 27
    Width = 97
    Height = 21
    EditMask = '!99/0000;1;_'
    MaxLength = 7
    TabOrder = 1
    Text = '  /    '
  end
  object BtnProcessar: TButton
    Left = 111
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 2
    OnClick = BtnProcessarClick
  end
end
