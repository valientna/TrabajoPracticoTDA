unit VisualUno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,Numeros_Racionales,RTTI;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    TEnumerador1: TEdit;
    Label3: TLabel;
    TEdenominador1: TEdit;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    TEnumerador2: TEdit;
    Label1: TLabel;
    TEdenominador2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure getSelectRadButton();


  private
    {}
  public
    {}
  end;

var
  Form1: TForm1;
  IQ1,IQ2:NumerosRacionales;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  getSelectRadButton();

  end;

procedure TForm1.getSelectRadButton();
var Q3: NumerosRacionales;
    c: Tipo_Comparacion;
    e: string;

Begin
  if RadioGroup1.ItemIndex = 0 then begin
    Q3:= IQ1.sumar(IQ2);
    memo1.Lines.Add('la suma da como resultado:' + Q3.Valor_A_STR);

  End
  Else if RadioGroup1.ItemIndex = 1 then
  Begin
    Q3:= IQ1.restar(IQ2);
    memo1.Lines.Add('la resta da como resultado:' + Q3.Valor_A_STR);
  End
  Else if RadioGroup1.ItemIndex = 2 then
  Begin
    Q3:= IQ1.multiplicar(IQ2);
    memo1.Lines.Add('la multiplicacion da como resultado:' + Q3.Valor_A_STR);
  End
  Else if RadioGroup1.ItemIndex = 3 then
  Begin
    if IQ1.dividir(IQ2,Q3) then begin
      memo1.Lines.Add('la division da como resultado:' + Q3.Valor_A_STR);
    end
    else
      memo1.Lines.Add('no se puede dividir por 0');

  End
  Else if RadioGroup1.ItemIndex = 4 then
  Begin
    e:= inputbox('exponente','ingrese un exponente natural','');
    Q3:= IQ1.potencia(e.ToInteger());
    memo1.Lines.Add('la potencia del racional 1 da resultado:'+ Q3.Valor_A_STR);
  End
  Else if RadioGroup1.ItemIndex = 5 then
  Begin
    c:= IQ1.comparar(IQ2);
    if c = IGUAL then
    memo1.Lines.Add('IGUAL')
    else
      if c = MAYOR then
        memo1.Lines.Add('MAYOR')
      else
        memo1.Lines.Add('MENOR')

  End;


  End;


procedure TForm1.Button2Click(Sender: TObject);
var numerador,denominador: string;
begin
  numerador:= TEnumerador1.Text;
  denominador:=TEdenominador1.TEXT;

  if IQ1.Asignar_Valor(numerador.ToInteger(), denominador.ToInteger()) then begin
    memo1.lines.Add('Racional 1 asignado: '+ IQ1.Valor_A_STR)

  End
  else
    memo1.Lines.Add('El denominador no puede ser 0. Racional 1 NO asignado');

end;

procedure TForm1.Button3Click(Sender: TObject);
var numerador,denominador: string;
begin
   numerador:= TEnumerador2.Text;
   denominador:=TEdenominador2.TEXT;

  if IQ2.Asignar_Valor(numerador.ToInteger(), denominador.ToInteger()) then begin
    memo1.lines.Add('Racional 2  asignado: '+ IQ2.Valor_A_STR)

  End
  else
    memo1.Lines.Add('El denominador no puede ser 0. Racional 2 NO asignado');

end;



END.
