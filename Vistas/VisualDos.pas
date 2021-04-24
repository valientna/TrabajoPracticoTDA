unit VisualDos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VisualTres, Vcl.StdCtrls, ejercicio1,
  Vcl.Menus;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    N2: TMenuItem;
    N1: TMenuItem;
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
    procedure Button2Click(Sender: TObject);
    procedure EjercicioTres1Click(Sender: TObject);
    procedure EjercicioUno1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
Procedure hola();
begin

end;
procedure TForm2.Button1Click(Sender: TObject);
begin
  hola();
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form1.Visible := true;
end;

procedure TForm2.EjercicioUno1Click(Sender: TObject);
begin
  Form2.Hide;
  Form1.Show;
end;

procedure TForm2.EjercicioTres1Click(Sender: TObject);
begin
  Form2.Hide;
  Form3.Show;
end;



end.
