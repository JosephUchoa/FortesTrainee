object FrmRelFolhaDePagamentos: TFrmRelFolhaDePagamentos
  Left = 0
  Top = 0
  Caption = 'FrmRelFolhaDePagamentos'
  ClientHeight = 442
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RLFolhaDePagamentos: TRLReport
    Left = 8
    Top = 23
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = False
    Borders.DrawRight = False
    Borders.DrawBottom = True
    Borders.FixedBottom = True
    DataSource = DtsLista
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 75
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object LblFuncionarios: TRLLabel
        Left = 3
        Top = 53
        Width = 86
        Height = 16
        Caption = 'Funcion'#225'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 0
        Width = 253
        Height = 24
        Caption = 'FOLHA DE PAGAMENTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 132
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.FixedTop = True
      object RLDBText2: TRLDBText
        Left = 3
        Top = 14
        Width = 44
        Height = 16
        DataField = 'NOME'
        DataSource = DtsLista
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 66
        Top = 95
        Width = 66
        Height = 16
        Alignment = taCenter
        Caption = 'Assinatura'
      end
      object RLDBText1: TRLDBText
        Left = 386
        Top = 14
        Width = 113
        Height = 16
        DataField = 'DESCONTO_INSS'
        DataSource = DtsLista
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 243
        Top = 14
        Width = 101
        Height = 16
        Caption = 'Desconto INSS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 9
        Top = 88
        Width = 177
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
      end
      object RLLabel5: TRLLabel
        Left = 243
        Top = 54
        Width = 99
        Height = 16
        Caption = 'Desconto IRFF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 387
        Top = 54
        Width = 112
        Height = 16
        DataField = 'DESCONTO_IRRF'
        DataSource = DtsLista
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 243
        Top = 96
        Width = 118
        Height = 16
        Caption = 'Saldo de Eventos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 387
        Top = 96
        Width = 113
        Height = 16
        DataField = 'DESCONTO_INSS'
        DataSource = DtsLista
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 620
        Top = 14
        Width = 111
        Height = 16
        DataField = 'SALARIO_BRUTO'
        DataSource = DtsLista
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 620
        Top = 54
        Width = 118
        Height = 16
        DataField = 'SALARIO_LIQUIDO'
        DataSource = DtsLista
        Text = ''
      end
      object RLLabel7: TRLLabel
        Left = 492
        Top = 14
        Width = 91
        Height = 16
        Caption = 'Sal'#225'rio bruto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 492
        Top = 54
        Width = 102
        Height = 16
        Caption = 'Sal'#225'rio liquido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 594
        Top = 14
        Width = 20
        Height = 16
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 360
        Top = 14
        Width = 20
        Height = 16
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 361
        Top = 54
        Width = 20
        Height = 16
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 361
        Top = 96
        Width = 20
        Height = 16
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 594
        Top = 54
        Width = 20
        Height = 16
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 245
      Width = 718
      Height = 22
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 644
        Top = 3
        Width = 39
        Height = 16
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 564
        Top = 3
        Width = 74
        Height = 16
        Caption = 'Emitido em:'
      end
    end
  end
  object DtsLista: TDataSource
    DataSet = QryLista
    Left = 399
    Top = 64
  end
  object QryLista: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      
        'SELECT F.NOME, FP.DESCONTO_INSS, FP.DESCONTO_IRRF, FP.SALDO_EVEN' +
        'TOS, FP.SALARIO_BRUTO, FP.SALARIO_LIQUIDO FROM FOLHAS FP'
      'INNER JOIN FUNCIONARIOS F ON F.CODIGO = FP.COD_FUNCIONARIO '
      #9)
    Left = 335
    Top = 64
  end
end
