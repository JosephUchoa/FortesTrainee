object FrmCadFuncionarios: TFrmCadFuncionarios
  Left = 0
  Top = 0
  Caption = 'Funcionarios'
  ClientHeight = 340
  ClientWidth = 704
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
  object PageControl: TPageControl
    Left = 8
    Top = 8
    Width = 681
    Height = 321
    ActivePage = Lista
    TabOrder = 0
    object Lista: TTabSheet
      Caption = 'Lista'
      object DBGrid1: TDBGrid
        Left = 3
        Top = 3
        Width = 542
        Height = 287
        DataSource = DtsFuncionarios
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Adicionar: TButton
        Left = 571
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = AdicionarClick
      end
      object Editar: TButton
        Left = 571
        Top = 128
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
        OnClick = EditarClick
      end
      object Remover: TButton
        Left = 571
        Top = 176
        Width = 75
        Height = 25
        Caption = 'Remover'
        TabOrder = 3
        OnClick = RemoverClick
      end
    end
    object Registro: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 3
        Top = 8
        Width = 41
        Height = 13
        Caption = 'CODIGO'
      end
      object Label2: TLabel
        Left = 3
        Top = 50
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 432
        Top = 48
        Width = 66
        Height = 13
        Caption = 'NASCIMENTO'
      end
      object Label4: TLabel
        Left = 432
        Top = 114
        Width = 36
        Height = 13
        Caption = 'CARGO'
      end
      object Label5: TLabel
        Left = 3
        Top = 114
        Width = 49
        Height = 13
        Caption = 'CONTATO'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 3
        Top = 192
        Width = 30
        Height = 13
        Caption = 'EMAIL'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 431
        Top = 192
        Width = 31
        Height = 13
        Caption = 'ATIVO'
      end
      object DBText1: TDBText
        Left = 3
        Top = 27
        Width = 65
        Height = 17
        DataField = 'CODIGO'
        DataSource = DtsFuncionarios
      end
      object Confirmar: TButton
        Left = 3
        Top = 256
        Width = 75
        Height = 25
        Caption = 'Confirmar'
        TabOrder = 0
        OnClick = ConfirmarClick
      end
      object Cancelar: TButton
        Left = 99
        Top = 256
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = CancelarClick
      end
      object DBEdit2: TDBEdit
        Left = 3
        Top = 69
        Width = 334
        Height = 21
        DataField = 'NOME'
        DataSource = DtsFuncionarios
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 3
        Top = 133
        Width = 337
        Height = 21
        DataField = 'CONTATO'
        DataSource = DtsFuncionarios
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 3
        Top = 211
        Width = 337
        Height = 21
        DataField = 'EMAIL'
        DataSource = DtsFuncionarios
        TabOrder = 4
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 431
        Top = 211
        Width = 185
        Height = 38
        Columns = 2
        DataField = 'ATIVO'
        DataSource = DtsFuncionarios
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 5
        Values.Strings = (
          '1'
          '0')
      end
      object DateTimePicker1: TDateTimePicker
        Left = 431
        Top = 67
        Width = 186
        Height = 21
        Date = 44519.000000000000000000
        Time = 0.982635381944419400
        TabOrder = 6
      end
      object DBComboBox1: TDBComboBox
        Left = 431
        Top = 133
        Width = 186
        Height = 21
        DataField = 'CARGO'
        DataSource = DtsFuncionarios
        TabOrder = 7
      end
    end
  end
  object QueryFuncionarios: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIOS')
    Left = 132
    object QueryFuncionariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryFuncionariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QueryFuncionariosNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Origin = 'NASCIMENTO'
      Required = True
    end
    object QueryFuncionariosCARGO: TIntegerField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Required = True
    end
    object QueryFuncionariosCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object QueryFuncionariosEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object QueryFuncionariosATIVO: TIntegerField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
  end
  object DtsFuncionarios: TDataSource
    DataSet = QueryFuncionarios
    Left = 132
    Top = 56
  end
  object QueryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM CARGOS')
    Left = 224
    object QueryCargosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryCargosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object DtsCargos: TDataSource
    DataSet = QueryCargos
    Left = 224
    Top = 56
  end
end
