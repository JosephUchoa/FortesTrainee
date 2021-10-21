unit classeConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Conta = class
    private
      FSaldo: Currency;
    public
      function Saque(var Valor: Currency): Currency; virtual;
      function Deposito(var Valor: Currency): Bool; virtual;
      function Consulta: Currency; virtual;
  end;

  ContaCorrente = class(Conta)
    public
      function Saque(var Valor: Currency): Currency; override;
      function Deposito(var Valor: Currency): Bool; override;
      function Consulta: Currency; override;
  end;

  ContaPoupanca = class(Conta)
    public
      function Saque(var Valor: Currency): Currency; override;
      function Deposito(var Valor: Currency): Bool; override;
      function Consulta: Currency; override;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Conta }
function Conta.Saque(var Valor: Currency): Currency;
begin
  if FSaldo >= Valor then
  begin
    FSaldo := FSaldo - Valor;
    Result := Valor;
  end
  else
    Result := 0;
end;

function Conta.Deposito(var Valor: Currency): Bool;
begin
  FSaldo := FSaldo + Valor;
  Result := True;
end;

function Conta.Consulta: Currency;

begin
  Result := FSaldo;
end;

{ ContaCorrente }

function ContaCorrente.Saque(var Valor: Currency): Currency;
begin
   Result := inherited;
   if Valor > 1000 then
    Result := 0;
   Result := Result - (Result / 100);
end;

function ContaCorrente.Deposito(var Valor: Currency): Bool;
begin
  Result := inherited;
end;

function ContaCorrente.Consulta: Currency;
begin
  Result := inherited;
end;

{ ContaPoupanca }

function ContaPoupanca.Saque(var Valor: Currency): Currency;
begin
  Result := inherited;
  if Valor >= 500 then
    Result := 0;
end;

function ContaPoupanca.Deposito(var Valor: Currency): Bool;
begin
   if Valor < 200 then
    Result := False
   else
    Result := inherited;
end;

function ContaPoupanca.Consulta: Currency;
begin
  Result := inherited;
end;

end.
