unit VisualTres;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Menus, Vcl.StdCtrls,
  Vcl.WinXPanels, Vcl.ExtCtrls;

const
  MaxFilas = 15;
  MaxColumnas = 15;

type
  TForm3 = class(TForm)
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
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
    procedure CargarMatriz1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EjercicioUno1Click(Sender: TObject);
    procedure EjercicioDos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Matriz = array [1..MaxFilas, 1..MaxColumnas] of integer;

var
  Form3: TForm3;
  filas, columnas : Integer;
  m1, m2, m3 : Matriz;

implementation

{$R *.dfm}

Procedure CargarMatriz(var matriz : Matriz; tsGrid : TStringGrid);
var f, c : integer;
    i, valor: integer;

Begin
  Randomize;
  for f := 0 to filas do
  Begin
    for c := 0  to columnas do
    Begin
      valor := 1 + Random(100);
      matriz[f][c] := valor;
      tsGrid.Cells[c, f] := valor.ToString;
    End;
  End;
End;

// EVENTOS MAIN MENU

procedure TForm3.CargarMatriz1Click(Sender: TObject);
begin
//aa
  CargarMatriz(m1, StringGrid1);
  CargarMatriz(m1, StringGrid2);
end;

procedure TForm3.EjercicioUno1Click(Sender: TObject);
begin
  Form3.Hide;

end;

procedure TForm3.EjercicioDos1Click(Sender: TObject);
begin
  Form3.Hide;

end;

// END EVENTOS MAIN MENU

procedure TForm3.FormShow(Sender: TObject);
begin
  filas := 4;
  columnas := 4;
end;


end.
