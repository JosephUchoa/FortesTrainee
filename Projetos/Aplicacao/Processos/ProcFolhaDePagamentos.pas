unit ProcFolhaDePagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Conexao, Vcl.StdCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmFolhaDePagamentos = class(TForm)
    EdtMesAno: TMaskEdit;
    LblMesAno: TLabel;
    BtnProcessar: TButton;
    MemoLog: TMemo;
    QryFolha: TFDQuery;
    QryFuncionarios: TFDQuery;
    QryFolhaMES_ANO: TStringField;
    QryFolhaCOD_FUNCIONARIO: TIntegerField;
    QryFolhaDESCONTO_INSS: TFloatField;
    QryFolhaDESCONTO_IRRF: TFloatField;
    QryFolhaSALDO_EVENTOS: TFloatField;
    QryFolhaSALARIO_BRUTO: TFloatField;
    QryFolhaSALARIO_LIQUIDO: TFloatField;
    procedure BtnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFolhaDePagamentos: TFrmFolhaDePagamentos;

implementation

uses
  CalcINSS, CalcIRRF;

{$R *.dfm}

procedure TFrmFolhaDePagamentos.BtnProcessarClick(Sender: TObject);
var
  MesAno: TDate;
begin
  MesAno := StrToDateDef('01/'+ EdtMesAno.Text, 0);
  
  if MesAno <= 0 then
  begin
    ShowMessage('O M�s/ano � obrigat�rio.');
    EdtMesAno.SetFocus;
    Exit;
  end;     
            
  MemoLog.Clear;
  QryFolha.Close;
  QryFolha.ParamByName('MES_ANO').AsString := EdtMesAno.Text;
  QryFolha.Open;

  QryFuncionarios.Close;
  QryFuncionarios.SQL.Text :=
    'SELECT F.CODIGO, F.NOME, FS.SALARIO,'+
    '       (SELECT SUM(FE.VALOR) FROM FOLHAS_EVENTOS FE'+
    '        INNER JOIN EVENTOS E ON(E.CODIGO = FE.COD_EVENTO AND E.TIPO = 1)'+
    '        WHERE FE.COD_FUNCIONARIO = F.CODIGO'+
    '        AND FE.MES_ANO = :MES_ANO) AS DESCONTOS,'+
    '       (SELECT SUM(FE.VALOR) FROM FOLHAS_EVENTOS FE'+
    '        INNER JOIN EVENTOS E ON(E.CODIGO = FE.COD_EVENTO AND E.TIPO = 0)'+
    '        WHERE FE.COD_FUNCIONARIO = F.CODIGO'+
    '        AND FE.MES_ANO = :MES_ANO) AS ACRESCIMOS'+
    ' FROM FUNCIONARIOS F'+
    ' INNER JOIN FUNCIONARIOS_SALARIOS FS ON(FS.COD_FUNCIONARIO = F.CODIGO)'+
    ' WHERE F.ATIVO  = 1'+
    ' AND FS.DATA_HORA = (SELECT MAX(FS2.DATA_HORA) FROM FUNCIONARIOS_SALARIOS FS2 WHERE FS2.COD_FUNCIONARIO = F.CODIGO)';
  QryFuncionarios.ParamByName('MES_ANO').AsString := EdtMesAno.Text;
  QryFuncionarios.Open;

  
  DM.Connection.StartTransaction;
  try
    while not QryFuncionarios.Eof do
    begin
      if QryFolha.Locate('MES_ANO;COD_FUNCIONARIO', VarArrayOf([MesAno, QryFuncionarios.FieldByName('CODIGO').AsString]), [loCaseInsensitive]) then
        QryFolha.Edit
      else 
      begin
        QryFolha.Append;
        QryFolhaMES_ANO.AsString := EdtMesAno.Text;
        QryFolhaCOD_FUNCIONARIO.AsString := QryFuncionarios.FieldByName('CODIGO').AsString;
      end;
      QryFolhaDESCONTO_INSS.AsFloat := CalcINSS.TInss.Calc(QryFuncionarios.FieldByName('SALARIO').AsFloat);
      QryFolhaDESCONTO_IRRF.AsFloat := CalcIRRF.TIrrf.Calc(QryFuncionarios.FieldByName('SALARIO').AsFloat);
      QryFolhaSALDO_EVENTOS.AsFloat := QryFuncionarios.FieldByName('ACRESCIMOS').AsFloat - QryFuncionarios.FieldByName('DESCONTOS').AsFloat;
      QryFolhaSALARIO_BRUTO.AsFloat := QryFuncionarios.FieldByName('SALARIO').AsFloat;
      QryFolhaSALARIO_LIQUIDO.AsFloat := QryFolhaSALARIO_BRUTO.AsFloat -
                                         QryFolhaDESCONTO_INSS.AsFloat -
                                         QryFolhaDESCONTO_IRRF.AsFloat +
                                         QryFolhaSALDO_EVENTOS.AsFloat;

      QryFolha.Post;
      MemoLog.Lines.Add(QryFuncionarios.FieldByName('NOME').AsString +' processado.');
      QryFuncionarios.Next;
    end;
    DM.Connection.Commit;
  except
    DM.Connection.Rollback;
    MemoLog.Lines.Add('Ocorreu um erro ao processar as transa��es.');
  end;
end;

end.
