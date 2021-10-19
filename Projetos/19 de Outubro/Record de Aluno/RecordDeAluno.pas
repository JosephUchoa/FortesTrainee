unit RecordDeAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Aluno = record
    Nome: String;
    Nota: Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure geraAlunos(out Alunos: array of Aluno);
var
  Nome: Char;
  M�dia: Double;
  Nota,I: Integer;
begin
  Nome := 'A';
  for I := Low(Alunos) to High(Alunos) do
  begin
    Nota := Random(10)+1;
    Alunos[I].Nome := Nome;
    Alunos[I].Nota := Nota;
    Inc(Nome);
  end;
end;

procedure getMedia(var Alunos: array of Aluno; out Media: Double; out Maior,Menor: Integer);
var
  I: Integer;
begin
  Media := 0;
  Maior := 0;
  Menor := 0;
  for I := Low(Alunos) to High(Alunos) do
  begin
    Media := Media + Alunos[I].Nota;
    if Alunos[I].Nota > Alunos[Maior].Nota then
      Maior := I;
    if Alunos[I].Nota < Alunos[Menor].Nota then
      Menor := I;
  end;
  Media := Media / Length(Alunos);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Alunos: array[0..9] of Aluno;
  Media: Double;
  PosMaior, PosMenor, I: Integer;
begin
  Memo1.clear;
  geraAlunos(Alunos);
  getMedia(Alunos, Media, PosMaior, PosMenor);

  for I := Low(Alunos) to High(Alunos) do
    Memo1.Lines.add('Aluno ' + Alunos[I].Nome + ' = ' + IntToStr(Alunos[I].Nota));

  StaticText1.Caption := ('M�dia dos Alunos: ' + FloatToStr(Media));
  StaticText2.Caption := ('Maior Nota: Aluno ' + Alunos[PosMaior].Nome + ', nota ' + IntToStr(Alunos[PosMaior].Nota));
  StaticText3.Caption := ('Menor Nota: Aluno ' + Alunos[PosMenor].Nome + ', nota ' + IntToStr(Alunos[PosMenor].Nota));
end;

end.
