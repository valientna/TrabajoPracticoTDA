unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls;

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
    Panel1: TPanel;
    EjercicioUnoBtn: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EjercicioDosBtn: TButton;
    EjercicioTresBtn: TButton;
    SalirBtn: TButton;
    EjercicioCuatroBtn: TButton;
    Label2: TLabel;
    EjercicioCincoBtn: TButton;
    Label5: TLabel;
    EjercicioSeisBtn: TButton;
    Label6: TLabel;
    Label7: TLabel;
    EjercicioSieteBtn: TButton;
    Label8: TLabel;
    EjercicioOchoBtn: TButton;
    Label9: TLabel;
    EjercicioNueveBtn: TButton;
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
    procedure Salir1Click(Sender: TObject);
    procedure EjercicioUnoBtnClick(Sender: TObject);
    procedure EjercicioDosBtnClick(Sender: TObject);
    procedure EjercicioTresBtnClick(Sender: TObject);
    procedure SalirBtnClick(Sender: TObject);
    procedure Ejercicio9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrincipalForm: TPrincipalForm;

implementation

{$R *.dfm}
uses VisualUno, VisualDos, VisualTres, VisualNueve;

procedure TPrincipalForm.EjercicioNueve1Click(Sender: TObject);
begin
  PrincipalForm.Hide;
  VisualNueve.Form9.Show;
end;

procedure TPrincipalForm.Ejercicio9Click(Sender: TObject);
begin
  PrincipalForm.Hide;
  VisualNueve.Form9.Show;
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

procedure TPrincipalForm.EjercicioTresBtnClick(Sender: TObject);
begin
  PrincipalForm.Hide;
  VisualTres.Form3.Show;
end;

procedure TPrincipalForm.EjercicioDos1Click(Sender: TObject);
begin
  PrincipalForm.Hide;
  VisualDos.Form2.Show;
end;

procedure TPrincipalForm.EjercicioDosBtnClick(Sender: TObject);
begin
  PrincipalForm.Hide;
  VisualDos.Form2.Show;
end;

procedure TPrincipalForm.EjercicioUno1Click(Sender: TObject);
begin
  PrincipalForm.Hide;
  VisualUno.Form1.Show;
end;

procedure TPrincipalForm.EjercicioUnoBtnClick(Sender: TObject);
begin
  PrincipalForm.Hide;
  VisualUno.Form1.Show;
end;

procedure TPrincipalForm.Principal1Click(Sender: TObject);
begin
  PrincipalForm.Show;
end;
procedure TPrincipalForm.Salir1Click(Sender: TObject);
begin
  PrincipalForm.Close;
end;

procedure TPrincipalForm.SalirBtnClick(Sender: TObject);
begin
   PrincipalForm.Close;
end;

end.
