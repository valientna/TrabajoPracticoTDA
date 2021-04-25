unit VisualUno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    N2: TMenuItem;
    N11: TMenuItem;
    Salir1: TMenuItem;
    a1: TMenuItem;
    Principal1: TMenuItem;
    N3: TMenuItem;
    EjercicioUno1: TMenuItem;
    EjercicioDos1: TMenuItem;
    EjercicioTres1: TMenuItem;
    EjercicioCuatro1: TMenuItem;
    EjercicioCinco1: TMenuItem;
    EjercicioSeis1: TMenuItem;
    EjercicioSiete1: TMenuItem;
    EjercicioOcho1: TMenuItem;
    EjercicioNueve1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EjercicioUno1Click(Sender: TObject);
    procedure EjercicioDos1Click(Sender: TObject);
    procedure EjercicioTres1Click(Sender: TObject);
    procedure EjercicioCuatro1Click(Sender: TObject);
    procedure EjercicioCinco1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    n1:integer;
    n22:integer;
    procedure getSelectRadButton();
  public
    function sumar(n1,n22:integer):integer;
    function restar(n1,n22:integer):integer;
    function multiplicar(n1,n22:integer):integer;
    function dividir(n1,n22:integer):integer;
    function potenciacion(n1,n22:integer):integer;
    function Mayor_menor_igual(n1,n22:integer):string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Principal, VisualDos, VisualTres;


function TForm1.sumar(n1,n22:integer):integer;
var suma: integer;
begin
  suma := n1 + n22;

  sumar := suma;
end;

function TForm1.restar(n1,n22:integer):integer;
var resta: integer;
begin
  resta := n1-n22;

  restar := resta;
end;

function TForm1.multiplicar(n1,n22:integer):integer;
var producto: integer;
begin
   producto := n1*n22;

   multiplicar := producto;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //Form2.Visible := true;
  //Form1.Visible := false;
end;

function TForm1.dividir(n1,n22:integer):integer;
var division: integer;
begin
  division := n1 div n22;

  dividir := division;
end;

procedure TForm1.EjercicioCinco1Click(Sender: TObject);
begin
//
end;

procedure TForm1.EjercicioCuatro1Click(Sender: TObject);
begin
//
end;

procedure TForm1.EjercicioTres1Click(Sender: TObject);
begin
//
end;

procedure TForm1.EjercicioDos1Click(Sender: TObject);
begin
  VisualDos.Form2.Show;
end;

procedure TForm1.EjercicioUno1Click(Sender: TObject);
begin
//
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.Hide;
  PrincipalForm.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //Form1.Visible := true;

end;

function TForm1.potenciacion(n1,n22:integer):integer;
var potencia,i : integer;
begin
  potencia :=1;
  for i := 1 to n22 do
    potencia := potencia *n1;

  potenciacion := potencia;
end;

function TForm1.Mayor_menor_igual(n1,n22:integer):string;
var resultado : string;
begin
  if n1 > n22 then
  Begin
    resultado := 'El primer valor es mayor';
  End
  else if n1 < n22 then
  Begin
    resultado := 'El primer valor es menor';
  End
  else
  Begin
    resultado := 'Los numeros son igual';
  End;
    Mayor_menor_igual := resultado;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  n1:= inputbox('Primer numer0', 'Ingrese un número entero:','0').ToInteger();

  n22:= inputbox('Segundo numero', 'Ingrese un número entero:','0').ToInteger();

  getSelectRadButton();

  end;

procedure TForm1.getSelectRadButton();
Begin
  if RadioGroup1.ItemIndex = 0 then
  Begin
    Label2.Caption := sumar(n1, n22).ToString;
  End
  Else if RadioGroup1.ItemIndex = 1 then
  Begin
    Label2.Caption := restar(n1, n22).ToString;
  End
  Else if RadioGroup1.ItemIndex = 2 then
  Begin
    Label2.Caption := multiplicar(n1, n22).ToString;
  End
  Else if RadioGroup1.ItemIndex = 3 then
  Begin
    Label2.Caption := dividir(n1, n22).ToString;
  End
  Else if RadioGroup1.ItemIndex = 4 then
  Begin
    Label2.Caption := potenciacion(n1, n22).ToString;
  End
  Else if RadioGroup1.ItemIndex = 5 then
  Begin
    Label2.Caption := Mayor_menor_igual(n1, n22);
  End;


  End;



end.
