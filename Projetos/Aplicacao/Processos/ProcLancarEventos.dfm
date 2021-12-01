object FrmLancarEventos: TFrmLancarEventos
  Left = 0
  Top = 0
  Caption = 'Lan'#231'ar Eventos'
  ClientHeight = 339
  ClientWidth = 469
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
  object LblMesAno: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 13
    Caption = 'M'#234's / Ano'
  end
  object LblFuncionarios: TLabel
    Left = 8
    Top = 133
    Width = 60
    Height = 13
    Caption = 'Funcionarios'
  end
  object LblCargos: TLabel
    Left = 8
    Top = 70
    Width = 34
    Height = 13
    Caption = 'Cargos'
  end
  object LblEventos: TLabel
    Left = 8
    Top = 197
    Width = 39
    Height = 13
    Caption = 'Eventos'
  end
  object LblValor: TLabel
    Left = 8
    Top = 260
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object EdtMesAno: TMaskEdit
    Left = 8
    Top = 27
    Width = 97
    Height = 21
    EditMask = '!99/0000;1;_'
    MaxLength = 7
    TabOrder = 0
    Text = '  /    '
  end
  object LcbCargos: TDBLookupComboBox
    Left = 8
    Top = 89
    Width = 297
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = DtsCargos
    NullValueKey = 16462
    TabOrder = 1
    OnClick = LcbCargosClick
  end
  object LcbFuncionarios: TDBLookupComboBox
    Left = 8
    Top = 152
    Width = 297
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = DtsFuncionarios
    NullValueKey = 16462
    TabOrder = 2
    OnClick = LcbFuncionariosClick
  end
  object LcbEventos: TDBLookupComboBox
    Left = 8
    Top = 216
    Width = 297
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = DtsEventos
    NullValueKey = 16462
    TabOrder = 3
  end
  object BtnConfirmar: TButton
    Left = 8
    Top = 306
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 5
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TButton
    Left = 89
    Top = 306
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = BtnCancelarClick
  end
  object EdtValor: TEdit
    Left = 8
    Top = 279
    Width = 121
    Height = 21
    Alignment = taRightJustify
    TabOrder = 4
  end
  object DtsFuncionarios: TDataSource
    DataSet = QryFuncionarios
    Left = 408
    Top = 144
  end
  object DtsCargos: TDataSource
    DataSet = QryCargos
    Left = 408
    Top = 88
  end
  object QryFuncionarios: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT CODIGO, NOME FROM FUNCIONARIOS'
      'WHERE ATIVO = 1')
    Left = 328
    Top = 144
    object QryFuncionariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFuncionariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object QryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM CARGOS')
    Left = 328
    Top = 88
    object QryCargosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCargosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object DtsEventos: TDataSource
    DataSet = QryEventos
    Left = 408
    Top = 192
  end
  object QryEventos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO FROM EVENTOS'
      '')
    Left = 328
    Top = 192
    object QryEventosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEventosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object QryFuncionariosSelecionados: TFDQuery
    Connection = DM.Connection
    Left = 264
    Top = 272
  end
  object QryAux: TFDQuery
    Connection = DM.Connection
    Left = 392
    Top = 272
  end
end
