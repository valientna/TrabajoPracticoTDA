unit VisualTres;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Menus, Vcl.StdCtrls,
  Vcl.WinXPanels, Vcl.ExtCtrls, Math;

const
  MaxFilas = 10;
  MaxColumnas = 10;

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
    NroRowsAndColsEdit: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure CargarMatriz1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EjercicioUno1Click(Sender: TObject);
    procedure EjercicioDos1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SumarMatriz1Click(Sender: TObject);
    procedure LimpiarMatriz1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Matriz = array [0 .. MaxFilas, 0 .. MaxColumnas] of integer;

var
  Form3: TForm3;
  filas, columnas: integer;
  m1, m2, m3: Matriz;

implementation

{$R *.dfm}

uses Principal, VisualUno, VisualDos;

Procedure ActualizarFilasColumnas(ma1, ma2, ma3: TStringGrid);
Begin
  ma1.ColCount := columnas;
  ma1.RowCount := filas;
  ma2.ColCount := columnas;
  ma2.RowCount := filas;
  ma3.ColCount := columnas;
  ma3.RowCount := filas;
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
    End;
  End;
End;

Procedure SumaMatriz(ms : Matriz;tsGrid: TStringGrid);
var f, c, uno, dos: integer;
    fi, co : Integer;
    res : Integer;
Begin
  uno := 0;
  dos := 0;
  for f := 0 to filas do
  Begin
    for c := 0 to columnas do
    Begin
      uno := m1[f][c];
      dos := m2[f][c];
      ms[f][c] := uno + dos;
    End;
  End;
  res := 0;

  for fi := 0 TO filas DO
  Begin
    for co := 0 TO columnas DO
    Begin
      res := ms[fi][co];
      tsGrid.Cells[co, fi] := res.ToString;
    End;
    res := 0;
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
    End;
  End;

End;
// START EVENTOS DEL FORMULARIO
procedure TForm3.Button1Click(Sender: TObject);
var ress: Integer;
begin
  ress := StrToInt(NroRowsAndColsEdit.Text);
  filas := ress;
  columnas := ress;
  ActualizarFilasColumnas(StringGrid1, StringGrid2, StringGrid3);
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  CargarMatriz(m1, StringGrid1);
  CargarMatriz(m2, StringGrid2);
  LimpiarMatriz(m3, StringGrid3);
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
   SumaMatriz(m3, StringGrid3);
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  LimpiarMatriz(m1, StringGrid1);
  LimpiarMatriz(m2, StringGrid2);
  LimpiarMatriz(m3, StringGrid3);
end;

procedure TForm3.CargarMatriz1Click(Sender: TObject);
begin
  CargarMatriz(m1, StringGrid1);
  CargarMatriz(m2, StringGrid2);
  LimpiarMatriz(m3, StringGrid3);
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
// END EVENTOS DEL FORMULARIO
// START EVENTOS MAIN MENU
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
  SumaMatriz(m3, StringGrid3);
end;
// END EVENTOS MAIN MENU


end.
