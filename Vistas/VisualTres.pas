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
    N1: TMenuItem;
    Principal1: TMenuItem;
    EjercicioSeis1: TMenuItem;
    EjercicioSiete1: TMenuItem;
    EjercicioOcho1: TMenuItem;
    EjercicioNueve1: TMenuItem;
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
    CargarManualBtn: TButton;
    MultiplicarBtn: TButton;
    editar1Lbl: TLabel;
    editar2Lbl: TLabel;
    MainAndOppositeDiagonalDiagonalBtn: TButton;
    SumRowsAndColsBtn: TButton;
    editar3Lbl: TLabel;
    editar4Lbl: TLabel;
    EscalarM1Btn: TButton;
    EscalarM2Btn: TButton;
    Edit1: TEdit;
    UpDown1: TUpDown;
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
    procedure MainAndOppositeDiagonalDiagonalBtnClick(Sender: TObject);
    procedure SumRowsAndColsBtnClick(Sender: TObject);
    procedure EscalarM1BtnClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EscalarM2BtnClick(Sender: TObject);

  private
    { Private declarations }
    procedure EnabledControls1();
    procedure EnabledControls2();
    procedure DisabledControls3();
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

  editar1Lbl.Caption := '';
  editar2Lbl.Caption := '';
  editar3Lbl.Caption := '';
  editar4Lbl.Caption := '';
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
  EnabledControls1();

  SetRowsAndCols();

  LimpiarMatriz(StringGrid1, mUno);
  LimpiarMatriz(StringGrid2, mDos);
  LimpiarMatriz(StringGrid3, mRes);
end;

procedure TForm3.EnabledControls1();
Begin
  Button2.Enabled := true;
  CargarManualBtn.Enabled := true;
  //Button4.Enabled := true;
End;

procedure TForm3.EnabledControls2();
begin
  Button4.Enabled := true;
  SumarBtn.Enabled := true;
  MultiplicarBtn.Enabled := true;
  MainAndOppositeDiagonalDiagonalBtn.Enabled := true;
  SumRowsAndColsBtn.Enabled := true;
  EscalarM1Btn.Enabled := true;
  EscalarM2Btn.Enabled := true;
  Edit1.Enabled := true;
end;

procedure TForm3.DisabledControls3();
begin
  Button2.Enabled := false;
  CargarManualBtn.Enabled := false;
  Button4.Enabled := false;
  SumarBtn.Enabled := false;
  MultiplicarBtn.Enabled := false;
  MainAndOppositeDiagonalDiagonalBtn.Enabled := false;
  SumRowsAndColsBtn.Enabled := false;
  EscalarM1Btn.Enabled := false;
  EscalarM2Btn.Enabled := false;
  Edit1.Enabled := false;
end;

procedure TForm3.SumarBtnClick(Sender: TObject);
begin
  Sumar()
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  DisabledControls3();

  LimpiarMatriz(StringGrid1, mUno);
  LimpiarMatriz(StringGrid2, mDos);
  LimpiarMatriz(StringGrid3, mRes);
end;

procedure TForm3.CargarManualBtnClick(Sender: TObject);
begin
  getValueGrid(mUno, StringGrid1);
  getValueGrid(mDos, StringGrid2);

  EnabledControls2();
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

  EnabledControls2();
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

procedure TForm3.SumRowsAndColsBtnClick(Sender: TObject);
var resultado : Integer;
begin
  resultado := mUno.GetMaxRowsAndCols(mDos);

  Sumar();
  editar1Lbl.Caption := 'El maximo del entre la fila y la columna es: ' + resultado.ToString;
end;

procedure TForm3.MainAndOppositeDiagonalDiagonalBtnClick(Sender: TObject);
begin

  editar1Lbl.Caption := 'La diagonal M1 principal es : ' + mUno.GetMainDiagonal();
  editar2Lbl.Caption := 'La diagonal M1 opuesta es : ' + mUno.GetOppositeDiagonal();

  editar3Lbl.Caption := 'La diagonal M2 principal es : ' + mDos.GetMainDiagonal();
  editar4Lbl.Caption := 'La diagonal M2 opuesta es : ' + mDos.GetOppositeDiagonal();
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

procedure TForm3.EscalarM1BtnClick(Sender: TObject);
Var value : Integer;
begin
  value := StrToInt(Edit1.Text);
  mRes := mUno.MultiplyMatrizByScalar(value);

  CargarMatriz(mRes, StringGrid3);
end;

procedure TForm3.EscalarM2BtnClick(Sender: TObject);
Var value : Integer;
begin
  value := StrToInt(Edit1.Text);
  mRes := mDos.MultiplyMatrizByScalar(value);

  CargarMatriz(mRes, StringGrid3);
end;

procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
Begin
  //
End;

procedure TForm3.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var cad : String;
begin
  cad := Edit1.Text;
  cad.ToLower;
  // NOTA: Concanete dos if porque me saltaba error al usar el and
  if cad >= ':' Then
    Edit1.Text := '';
  if cad < '-' Then
    Edit1.Text := '';

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
