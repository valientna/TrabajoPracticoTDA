unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ejercicio1, VisualDos, VisualTres;

type
  TPrincipalForm = class(TForm)
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Salir1: TMenuItem;
    a1: TMenuItem;
    EjercicioUno1: TMenuItem;
    EjercicioDos1: TMenuItem;
    EjercicioTres1: TMenuItem;
    Cuatro1: TMenuItem;
    EjercicioCinco1: TMenuItem;
    N11: TMenuItem;
    N2: TMenuItem;
    EjercicioSeis1: TMenuItem;
    EjercicioSiete1: TMenuItem;
    EjercicioOcho1: TMenuItem;
    EjercicioNueve1: TMenuItem;
    Principal1: TMenuItem;
    N3: TMenuItem;
    procedure EjercicioUno1Click(Sender: TObject);
    procedure Principal1Click(Sender: TObject);
    procedure EjercicioDos1Click(Sender: TObject);
    procedure EjercicioTres1Click(Sender: TObject);
    procedure Cuatro1Click(Sender: TObject);
    procedure EjercicioCinco1Click(Sender: TObject);
    procedure EjercicioSeis1Click(Sender: TObject);
    procedure EjercicioSiete1Click(Sender: TObject);
    procedure EjercicioOcho1Click(Sender: TObject);
    procedure EjercicioNueve1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrincipalForm: TPrincipalForm;

implementation

{$R *.dfm}

procedure TPrincipalForm.EjercicioNueve1Click(Sender: TObject);
begin
//
end;

procedure TPrincipalForm.EjercicioOcho1Click(Sender: TObject);
begin
//
end;

procedure TPrincipalForm.EjercicioSeis1Click(Sender: TObject);
begin
//
end;

procedure TPrincipalForm.EjercicioSiete1Click(Sender: TObject);
begin
//
end;

procedure TPrincipalForm.EjercicioCinco1Click(Sender: TObject);
begin
//
end;

procedure TPrincipalForm.Cuatro1Click(Sender: TObject);
begin
//
end;

procedure TPrincipalForm.EjercicioTres1Click(Sender: TObject);
begin
  PrincipalForm.Hide;
  VisualTres.Form3.Show;
end;

procedure TPrincipalForm.EjercicioDos1Click(Sender: TObject);
begin
  PrincipalForm.Hide;
  VisualDos.Form2.Show;
end;

procedure TPrincipalForm.EjercicioUno1Click(Sender: TObject);
begin
  PrincipalForm.Hide;
  ejercicio1.Form1.Show;
end;

procedure TPrincipalForm.Principal1Click(Sender: TObject);
begin
  PrincipalForm.Show;
end;
end.
