unit VisualTres;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Menus, Vcl.StdCtrls,
  Vcl.WinXPanels, Vcl.ExtCtrls, Math, Vcl.ComCtrls, Matrices;


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
    SumarBtn: TButton;
    Button4: TButton;
    TabControl1: TTabControl;
    Panel1: TPanel;
    Panel2: TPanel;
    SetearFilasyColumnas1: TMenuItem;
    CargarManualBtn: TButton;
    MultiplicarBtn: TButton;
    procedure CargarMatriz1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EjercicioUno1Click(Sender: TObject);
    procedure EjercicioDos1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SumarMatriz1Click(Sender: TObject);
    procedure LimpiarMatriz1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SumarBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure SetearFilasyColumnas1Click(Sender: TObject);
    procedure CargarRandomBtnClick(Sender: TObject);
    procedure CargarManualBtnClick(Sender: TObject);
    procedure MultiplicarBtnClick(Sender: TObject);

  private
    { Private declarations }
    var  _filas, _columnas: integer;

    { PROCEDURE AND FUNCTION}
    procedure UpdateRowsAndCols(var ma1 : TStringGrid);
    procedure SetRowsAndCols();
    Procedure LimpiarMatriz(var tsGrid: TStringGrid; mat : Matriz);
    Procedure getValueGrid(var mat : Matriz; grid : TStringGrid);
    Procedure Sumar();
    Procedure Multiplicacion();
    Procedure CargarMatriz(mat : Matriz; var grid : TStringGrid);
  public
    { Public declarations }

  end;


var
  Form3: TForm3;

  mUno, mDos, mRes : Matriz;

implementation

{$R *.dfm}

uses Principal, VisualUno, VisualDos;

// START EVENTOS DEL FORMULARIO
Procedure TForm3.CargarMatriz(mat : Matriz; var grid : TStringGrid);
var
  f, c: integer;
  valor: integer;
Begin
  for f := 0 TO _filas DO
    for c := 0 TO _columnas DO
    Begin
      grid.Cells[c, f] := IntToStr(mat.ReturnItems(f, c));
    End;

End;

procedure TForm3.UpdateRowsAndCols(var ma1 : TStringGrid);
Begin
  ma1.ColCount := _columnas;
  ma1.RowCount := _filas;

End;

Procedure TForm3.LimpiarMatriz(var tsGrid: TStringGrid; mat : Matriz);
var
  f, c: integer;
Begin
  for f := 0 to _filas do
  Begin
    for c := 0 to _columnas do
    Begin
      mat.SetVaule(f, c, 0);
      tsGrid.Cells[c, f] := '0';
    End;
  End;

End;

Procedure TForm3.Sumar();
var f, c: integer;
Begin

  mRes := mUno.Sumar(mDos);

  for f := 0 to _filas do
  Begin
    for c := 0 to _columnas do
    Begin
      StringGrid3.Cells[c, f] := IntToStr(mRes.ReturnItems(f, c));
    End;
  End;

end;

Procedure TForm3.Multiplicacion();
var f, c: integer;
Begin
  mRes := mUno.Multiply(mDos);

  for f := 0 to _filas do
    for c := 0 to _columnas do
    Begin

      StringGrid3.Cells[c, f] := IntToStr(mRes.ReturnItems(f, c));
    End;
End;

procedure TForm3.MultiplicarBtnClick(Sender: TObject);
begin
  Multiplicacion();
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  SetRowsAndCols();

  LimpiarMatriz(StringGrid1, mUno);
  LimpiarMatriz(StringGrid2, mDos);
  LimpiarMatriz(StringGrid3, mRes);
end;

procedure TForm3.SumarBtnClick(Sender: TObject);
begin
  Sumar()
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  LimpiarMatriz(StringGrid1, mUno);
  LimpiarMatriz(StringGrid2, mDos);
  LimpiarMatriz(StringGrid3, mRes);
end;

procedure TForm3.CargarManualBtnClick(Sender: TObject);
begin
  getValueGrid(mUno, StringGrid1);
  getValueGrid(mDos, StringGrid2);
end;

procedure TForm3.CargarMatriz1Click(Sender: TObject);
begin
  CargarMatriz(mUno, StringGrid1);
  CargarMatriz(mDos, StringGrid2);

  LimpiarMatriz(StringGrid3, mRes);
end;

procedure TForm3.CargarRandomBtnClick(Sender: TObject);
begin
  mUno.LoadRandom(9);
  mDos.LoadRandom(9);

  CargarMatriz(mUno, StringGrid1);
  CargarMatriz(mDos, StringGrid2);
  LimpiarMatriz(StringGrid3, mRes);
end;

procedure TForm3.SetRowsAndCols();
var ress: Integer;
begin
  ress := StrToInt(NroRowsAndColsEdit.Text);

  _filas := ress;
  _columnas := ress;

  UpdateRowsAndCols(StringGrid1);
  UpdateRowsAndCols(StringGrid2);
  UpdateRowsAndCols(StringGrid3);


  mUno.SetDimension(ress-1);
  mDos.SetDimension(ress-1);
  mRes.SetDimension(ress-1);
end;

Procedure TForm3.getValueGrid(var mat : Matriz; grid : TStringGrid);
var rows, cols, value : Integer;
begin
  for rows := 0 TO _filas DO
    for cols := 0 TO _columnas DO
    Begin
      value := StrToInt(grid.Cells[cols, rows]);

      if (grid.Cells[cols, rows] = '') Then
        value := 0;

      mat.SetVaule(rows, cols, value);
    End;
end;

// END EVENTOS DEL FORMULARIO

// START EVENTOS MAIN MENU
procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  PrincipalForm.Show;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  _filas := StringGrid1.RowCount;
  _columnas := StringGrid1.ColCount;
end;

procedure TForm3.LimpiarMatriz1Click(Sender: TObject);
begin
  LimpiarMatriz(StringGrid1, mUno);
  LimpiarMatriz(StringGrid2, mDos);
  LimpiarMatriz(StringGrid3, mRes);
end;

procedure TForm3.Salir1Click(Sender: TObject);
begin
  Form3.Close;
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

procedure TForm3.SetearFilasyColumnas1Click(Sender: TObject);
begin
  SetRowsAndCols()
end;

procedure TForm3.SumarMatriz1Click(Sender: TObject);
begin
  Sumar();
end;

procedure TForm3.TabControl1Change(Sender: TObject);
begin
  if (TabControl1.TabIndex = 0)then
  Begin
     Panel1.Visible := true;
     Panel2.Visible := false;
  End
  Else If (TabControl1.TabIndex = 1)then
  Begin
     Panel1.Visible := false;
     Panel2.Visible := true;
  End;
end;

// END EVENTOS MAIN MENU


end.
