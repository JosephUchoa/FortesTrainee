unit CalculoIRRF;

interface

implementation

uses
  SysUtils;

function CalculaIRRF(SalarioBase: Currency): Currency;
begin
  Result := 0;
  if SalarioBase <= 0 then
    raise Exception.Create('Sal�rios deve ser maior que zero.');

  if SalarioBase >= 4664.69 then
  begin
    Result := SalarioBase * 0.275;
    Result := Abs(Result - 869.36);
  end
  else if SalarioBase >= 3751.06 then
  begin
    Result := SalarioBase * 0.225;
    Result := Abs(Result - 636.13);
  end
  else if SalarioBase >= 2826.66 then
  begin
    Result := SalarioBase * 0.15;
    Result := Abs(Result - 354.80);
  end
  else if SalarioBase >= 1903.99 then
  begin
    Result := SalarioBase * 0.075;
    Result := Abs(Result - 142.80);
  end
end;
end.
