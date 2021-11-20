unit CadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Conexao, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls;

type
  TFrmCadFuncionarios = class(TForm)
    PageControl: TPageControl;
    Lista: TTabSheet;
    DBGrid1: TDBGrid;
    Adicionar: TButton;
    Editar: TButton;
    Remover: TButton;
    Registro: TTabSheet;
    Confirmar: TButton;
    Cancelar: TButton;
    QueryFuncionarios: TFDQuery;
    DtsFuncionarios: TDataSource;
    QueryFuncionariosCODIGO: TIntegerField;
    QueryFuncionariosNOME: TStringField;
    QueryFuncionariosNASCIMENTO: TDateField;
    QueryFuncionariosCARGO: TIntegerField;
    QueryFuncionariosCONTATO: TStringField;
    QueryFuncionariosEMAIL: TStringField;
    QueryFuncionariosATIVO: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBText1: TDBText;
    QueryCargos: TFDQuery;
    QueryCargosCODIGO: TIntegerField;
    QueryCargosNOME: TStringField;
    DtsCargos: TDataSource;
    DBRadioGroup1: TDBRadioGroup;
    DateTimePicker1: TDateTimePicker;
    DBComboBox1: TDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AdicionarClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure RemoverClick(Sender: TObject);
    procedure ConfirmarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFuncionarios: TFrmCadFuncionarios;

implementation

{$R *.dfm}
procedure TFrmCadFuncionarios.FormCreate(Sender: TObject);
begin
  QueryFuncionarios.Open;
  QueryCargos.Open;


end;

procedure TFrmCadFuncionarios.FormDestroy(Sender: TObject);
begin
  QueryFuncionarios.Close;
  QueryCargos.Close;
end;

procedure TFrmCadFuncionarios.AdicionarClick(Sender: TObject);
begin
  QueryFuncionarios.Append;

  QueryFuncionariosATIVO.Value := 1;

  PageControl.ActivePage := Registro;
end;

procedure TFrmCadFuncionarios.EditarClick(Sender: TObject);
begin
  if not QueryFuncionarios.IsEmpty then
  begin
    QueryFuncionarios.Edit;

    DateTimePicker1.DateTime :=  QueryFuncionariosNASCIMENTO.Value;

    PageControl.ActivePage := Registro;
  end;
end;

procedure TFrmCadFuncionarios.RemoverClick(Sender: TObject);
begin
  if not QueryFuncionarios.IsEmpty then
    QueryFuncionarios.Delete;
end;
procedure TFrmCadFuncionarios.ConfirmarClick(Sender: TObject);
begin
  if QueryFuncionarios.State = dsInsert then
    QueryFuncionariosCODIGO.Value := 0;

  if QueryFuncionarios.State in [dsInsert,dsEdit] then
  begin
    QueryFuncionariosNASCIMENTO.Value := DateTimePicker1.DateTime;
    QueryFuncionariosCARGO.Value := 4;
    QueryFuncionarios.Post;
  end;
  QueryFuncionarios.Close;
  QueryFuncionarios.Open;
  PageControl.ActivePage := Lista;
end;

procedure TFrmCadFuncionarios.CancelarClick(Sender: TObject);
begin
  if QueryFuncionarios.State in [dsInsert,dsEdit] then
    QueryFuncionarios.Cancel;
  PageControl.ActivePage := Lista;
end;

end.
