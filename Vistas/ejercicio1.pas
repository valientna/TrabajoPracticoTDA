unit ejercicio1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    n1:integer;
    n2:integer;
    procedure getSelectRadButton();
  public
    function sumar(n1,n2:integer):integer;
    function restar(n1,n2:integer):integer;
    function multiplicar(n1,n2:integer):integer;
    function dividir(n1,n2:integer):integer;
    function potenciacion(n1,n2:integer):integer;
    function Mayor_menor_igual(n1,n2:integer):string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function TForm1.sumar(n1,n2:integer):integer;
var suma: integer;
begin
suma := n1 + n2
end;

function TForm1.restar(n1,n2:integer):integer;
var resta: integer;
begin
  resta := n1-n2
  end;

function TForm1.multiplicar(n1,n2:integer):integer;
var producto: integer;
 begin
 producto := n1*n2;

 end;

 function TForm1.dividir(n1,n2:integer):integer;
var division: integer;
begin
  division := n1 div n2;
end;
function TForm1.potenciacion(n1,n2:integer):integer;
var potencia,i : integer;
begin
  i := 1;
  potencia :=1;
  for i := 1 to n2 do
    potencia := potencia *n1
end;
function TForm1.Mayor_menor_igual(n1,n2:integer):string;
var resultado : string;
begin
  if n1 > n2 then
    resultado := 'mayor'
    else
      if n1 < n2 then
        resultado := 'menor'
        else
          resultado := 'igual'
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  n1:= inputbox('Primer numer0', 'Ingrese un número entero:','0').ToInteger();

  n2:= inputbox('Segundo numero', 'Ingrese un número entero:','0').ToInteger();

  getSelectRadButton();

  end;

procedure TForm1.getSelectRadButton();
Begin
  if RadioGroup1.ItemIndex = 0 then
  Begin

  End
  Else if RadioGroup1.ItemIndex = 1 then
  Begin

  End
  Else if RadioGroup1.ItemIndex = 2 then
  Begin

  End
  Else if RadioGroup1.ItemIndex = 3 then
  Begin

  End
  Else if RadioGroup1.ItemIndex = 4 then
  Begin

  End
  Else if RadioGroup1.ItemIndex = 5 then
  Begin

  End
End;


end.
