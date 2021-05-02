unit VisualDos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls, UVector;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Button7: TButton;
    Edit6: TEdit;
    Label6: TLabel;
    Button8: TButton;
    Vector: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Button9: TButton;
    Edit7: TEdit;
    Label9: TLabel;
    Button10: TButton;
    Button11: TButton;
    Edit4: TEdit;
    Label4: TLabel;
    Label10: TLabel;
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
    Cuatro1: TMenuItem;
    EjercicioCinco1: TMenuItem;
    EjercicioSeis1: TMenuItem;
    EjercicioSiete1: TMenuItem;
    EjercicioOcho1: TMenuItem;
    EjercicioNueve1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Principal1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  OBJVector : OBVector;
  Cargado: boolean;
implementation

{$R *.dfm}

uses Principal;

//---------------------------------------------------------------------------
//MOSTRAR VECTOR
//---------------------------------------------------------------------------

procedure TForm2.Button10Click(Sender: TObject);
var i, ivector : integer;
begin
if not cargado then begin
  messagedlg('Setee el tamaño del vector antes de mostrarlo.', mterror,[mbok], 0, mbok);
  exit
end;

ivector:= strtoint(vector.Text);
if OBJVector.ValidarVector(Ivector) then begin
  messagedlg('Número de vector invalido, ingrese uno del 1 al 3', mterror,[mbok], 0, mbok);
  exit
end;

memo1.Clear;
for i := 0 to OBJVector.devolvertamaño do  begin
  memo1.Lines.Add(OBJVector.DevolverValorI(ivector, i).ToString);
end;



end;


//---------------------------------------------------------------------------
//SUMAR VECTOR A OTRO
//---------------------------------------------------------------------------

procedure TForm2.Button11Click(Sender: TObject);
var ivector : integer;
cadena : string;
begin

if not cargado then begin
  messagedlg('Setee el tamaño del vector.', mterror,[mbok], 0, mbok);
  exit
end;
ivector:= strtoint(vector.Text);
if OBJVector.ValidarVector(Ivector) then begin
  messagedlg('Número de vector invalido, ingrese uno del 1 al 3', mterror,[mbok], 0, mbok);
  exit
end;

cadena:= edit4.text;

OBJVECTOR.sumarvector(ivector, cadena);
memo1.Clear;
memo1.Lines.Add('Vector sumado correctamente');


end;

//---------------------------------------------------------------------------
//CARGAR ALEATORIO
//---------------------------------------------------------------------------

procedure TForm2.Button1Click(Sender: TObject);
var n1, n2, i, IVector : integer;
begin
if not cargado then begin
  messagedlg('Setee el tamaño del vector antes de cargar aleatoriamente éste.', mterror,[mbok], 0, mbok);
  exit
end;
n1:= Strtoint(edit1.text);
n2:= strtoint(edit2.text);
Ivector:= strtoint(Vector.Text);

if OBJVector.ValidarVector(Ivector) then begin
  messagedlg('Número de vector invalido, ingrese uno del 1 al 3', mterror,[mbok], 0, mbok);
  exit
end;

if OBJVector.ValidarTamaño(n1, n2) then begin
  messagedlg('El tamaño del vector es mayor a la cantidad de números sin repetir que se pueden ingresar',mterror, [mbok], 0, mbok);
  exit
end;


OBJVector.CargarAleatorio( n1, n2, ivector);
memo1.Clear;
memo1.Lines.Add('vector cargado');



end;


//---------------------------------------------------------------------------
//SUMATORIA
//---------------------------------------------------------------------------

procedure TForm2.Button2Click(Sender: TObject);
var
Ivector : integer;
begin

if not cargado then begin
  messagedlg('Setee el tamaño del vector.', mterror,[mbok], 0, mbok);
  exit
end;
ivector:= strtoint(vector.Text);
if OBJVector.ValidarVector(Ivector) then begin
  messagedlg('Número de vector invalido, ingrese uno del 1 al 3', mterror,[mbok], 0, mbok);
  exit
end;


memo1.Clear;
memo1.Lines.Add('La sumatoria del vector ' + ivector.ToString + ' es '+ OBJVector.sumatoria(ivector).tostring);

end;


//---------------------------------------------------------------------------
//MAXIMO
//---------------------------------------------------------------------------

procedure TForm2.Button3Click(Sender: TObject);
var ivector : integer;
begin

if not cargado then begin
  messagedlg('Setee el tamaño del vector.', mterror,[mbok], 0, mbok);
  exit
end;
ivector:= strtoint(vector.Text);
if OBJVector.ValidarVector(Ivector) then begin
  messagedlg('Número de vector invalido, ingrese uno del 1 al 3', mterror,[mbok], 0, mbok);
  exit
end;

memo1.Clear;
memo1.Lines.Add(OBJVector.maximo(ivector));

end;

//---------------------------------------------------------------------------
//MINIMO
//---------------------------------------------------------------------------

procedure TForm2.Button4Click(Sender: TObject);
var ivector : integer;
begin

if not cargado then begin
  messagedlg('Setee el tamaño del vector.', mterror,[mbok], 0, mbok);
  exit
end;
ivector:= strtoint(vector.Text);
if OBJVector.ValidarVector(Ivector) then begin
  messagedlg('Número de vector invalido, ingrese uno del 1 al 3', mterror,[mbok], 0, mbok);
  exit
end;

memo1.Clear;
memo1.Lines.Add(OBJVector.Minimo(ivector));

end;


//---------------------------------------------------------------------------
//PROMEDIO
//---------------------------------------------------------------------------

procedure TForm2.Button5Click(Sender: TObject);
var ivector : integer;
begin

if not cargado then begin
  messagedlg('Setee el tamaño del vector.', mterror,[mbok], 0, mbok);
  exit
end;
ivector:= strtoint(vector.Text);
if OBJVector.ValidarVector(Ivector) then begin
  messagedlg('Número de vector invalido, ingrese uno del 1 al 3', mterror,[mbok], 0, mbok);
  exit
end;

memo1.Clear;
memo1.Lines.Add('Promedio: '+ OBJVector.Promedio(ivector).ToString);


end;


//---------------------------------------------------------------------------
//INTERCALAR
//---------------------------------------------------------------------------

procedure TForm2.Button6Click(Sender: TObject);
var ivector : integer;
cadena : string;
begin

if not cargado then begin
  messagedlg('Setee el tamaño del vector.', mterror,[mbok], 0, mbok);
  exit
end;
ivector:= strtoint(vector.Text);
if OBJVector.ValidarVector(Ivector) then begin
  messagedlg('Número de vector invalido, ingrese uno del 1 al 3', mterror,[mbok], 0, mbok);
  exit
end;

cadena:= edit3.Text;

memo1.Clear;
memo1.Lines.Add(OBJVector.Intercalar(IVector, Cadena));


end;

//---------------------------------------------------------------------------
//CARGAR MANUAL
//---------------------------------------------------------------------------
procedure TForm2.Button7Click(Sender: TObject);
var
Ivector: integer;
Cadena: string;
begin
if not cargado then begin
  messagedlg('Setee el tamaño del vector antes de cargar éste.', mterror,[mbok], 0, mbok);
  exit
end;
ivector:= strtoint(vector.Text);
if OBJVector.ValidarVector(Ivector) then begin
  messagedlg('Número de vector invalido, ingrese uno del 1 al 3', mterror,[mbok], 0, mbok);
  exit
end;
Cadena:= edit5.Text+ ' ';
OBJVector.CargarManual(Cadena, ivector);
memo1.Lines.Add('vector cargado');

end;


//---------------------------------------------------------------------------
//PRODUCTO ESCALAR
//---------------------------------------------------------------------------

procedure TForm2.Button8Click(Sender: TObject);
Var ivector, escalar : integer;
begin

if not cargado then begin
  messagedlg('Setee el tamaño del vector.', mterror,[mbok], 0, mbok);
  exit
end;
ivector:= strtoint(vector.Text);
if OBJVector.ValidarVector(Ivector) then begin
  messagedlg('Número de vector invalido, ingrese uno del 1 al 3', mterror,[mbok], 0, mbok);
  exit
end;

escalar:=strtoint(edit6.Text);

OBJVector.Escalar(ivector, escalar);
memo1.Clear;
memo1.Lines.Add('Vector escalado correctamente');

end;

//---------------------------------------------------------------------------
//SETEAR VECTOR
//---------------------------------------------------------------------------

procedure TForm2.Button9Click(Sender: TObject);
begin
cargado:= true;
OBJVector.SetearVector(strtoint(edit7.Text));

end;



procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form2.Hide;
  PrincipalForm.Show;
end;

procedure TForm2.Principal1Click(Sender: TObject);
begin
  Form2.Hide;
  PrincipalForm.Show;
end;

end.
