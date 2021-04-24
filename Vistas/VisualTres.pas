unit VisualTres;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Menus, Vcl.StdCtrls,
  Vcl.WinXPanels, Vcl.ExtCtrls;

const
  MaxFilas = 15;
  MaxColumnas = 15;

type
  TForm3 = class(TForm)
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CardPanel1: TCardPanel;
    Card1: TCard;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Salir1: TMenuItem;
    a1: TMenuItem;
    EjercicioUno1: TMenuItem;
    EjercicioDos1: TMenuItem;
    EjercicioTres1: TMenuItem;
    Cuatro1: TMenuItem;
    EjercicioCinco1: TMenuItem;
    Items1: TMenuItem;
    CargarMatriz1: TMenuItem;
    SumarMatriz1: TMenuItem;
    N1: TMenuItem;
    Principal1: TMenuItem;
    EjercicioSeis1: TMenuItem;
    EjercicioSiete1: TMenuItem;
    EjercicioOcho1: TMenuItem;
    EjercicioNueve1: TMenuItem;
    LimpiarMatriz1: TMenuItem;
    StringGrid3: TStringGrid;
    procedure CargarMatriz1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EjercicioUno1Click(Sender: TObject);
    procedure EjercicioDos1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SumarMatriz1Click(Sender: TObject);
    procedure LimpiarMatriz1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure SumarMatriz();
  public
    { Public declarations }
  end;

  Matriz = array [1 .. MaxFilas, 1 .. MaxColumnas] of integer;

var
  Form3: TForm3;
  filas, columnas: integer;
  m1, m2, m3: matriz;

implementation

{$R *.dfm}

uses Principal, VisualUno, VisualDos;
Procedure obtenerFilasColumnass();
Begin
   filas := 4;
   columnas := 4;
End;

Procedure CargarMatriz(var Matriz: Matriz; tsGrid: TStringGrid);
var
  f, c: integer;
  valor: integer;
Begin

  Randomize;
  for f := 0 to filas do
  Begin
    for c := 0 to columnas do
    Begin
      valor := 1 + Random(100);
      Matriz[f][c] := valor;
      tsGrid.Cells[c, f] := valor.ToString;

      obtenerFilasColumnass();
    End;
  End;
End;



Procedure LimpiarMatriz(var matriz: Matriz; tsGrid: TStringGrid);
var
  f, c: integer;
Begin
  for f := 0 to filas do
  Begin
    for c := 0 to columnas do
    Begin
      matriz[f][c] := 0;
      tsGrid.Cells[c, f] := '0';
      obtenerFilasColumnass();
    End;
  End;

End;


// EVENTOS MAIN MENU

procedure TForm3.CargarMatriz1Click(Sender: TObject);
begin
  CargarMatriz(m1, StringGrid1);
  CargarMatriz(m2, StringGrid2);

end;

procedure TForm3.EjercicioUno1Click(Sender: TObject);
begin
  Form3.Hide;
  Form1.Show;
end;

procedure TForm3.EjercicioDos1Click(Sender: TObject);
begin
  Form3.Hide;
  Form2.Show;
end;

// END EVENTOS MAIN MENU
procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  PrincipalForm.Show;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  filas := 4;
  columnas := 4;
end;

procedure TForm3.LimpiarMatriz1Click(Sender: TObject);
begin

  obtenerFilasColumnass();
  LimpiarMatriz(m1, StringGrid1);
  LimpiarMatriz(m2, StringGrid2);
  LimpiarMatriz(m3, StringGrid3);
end;

procedure TForm3.Salir1Click(Sender: TObject);
begin
  Form3.Close;
end;

procedure TForm3.SumarMatriz1Click(Sender: TObject);
begin
  //
  SumarMatriz();
end;

Procedure TForm3.SumarMatriz();
var f, c, a, s: integer;
Begin
  for f := 0 to filas do
  Begin
    for c := 0 to columnas do
    Begin
      m3[f][c] := m1[f][c] + m2[f][c];

      Write(IntToStr(m3[f][c]));

      //StringGrid3.Cells[c][f] := '1';
      obtenerFilasColumnass();
    End;
    Writeln('');
  End;

{  for f := 1 to filas do
  Begin
    for c := 1 to columnas do
    Begin
      StringGrid3.Cells[c][f] := m3[f][c].ToString;
      obtenerFilasColumnass();
    End;
  End;}

End;
end.
