object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 231
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 88
    Top = 40
    object as1: TMenuItem
      Caption = 'Cadastros'
      object Cargos: TMenuItem
        Caption = 'Cargos'
        OnClick = CargosClick
      end
      object Eventos: TMenuItem
        Caption = 'Eventos'
        OnClick = EventosClick
      end
      object Funcionarios: TMenuItem
        Caption = 'Funcion'#225'rios'
        OnClick = FuncionariosClick
      end
      object Funcionrios2: TMenuItem
        Caption = '-'
      end
    end
  end
end
