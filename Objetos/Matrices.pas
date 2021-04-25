unit Matrices;

interface
uses Math, System.SysUtils;

const MIN = 0;
      MAX = 10;

Type
  _INDICE = MIN..MAX;  // Subrango

  Matriz = Object
    Private
      _Item : Array [MIN..MAX, MIN..MAX] of Integer;
      _Size : _INDICE;
    Public
      Procedure SetDimension(value : Integer);
      Procedure SetVaule(r, c : _INDICE; value : Integer);
      Procedure LoadRandom(utill : Integer);
      Function ReturnItems(r, c : Integer) : Integer;
      Function GetDimension() : Integer;
      Function Sumar(m2 : Matriz) : Matriz;
      Function Multiply(m2 : Matriz) : Matriz;
      Function GetMainDiagonal() : String;
      Function GetOppositeDiagonal() : String;

  End;


implementation

Procedure Matriz.SetDimension(value : Integer);
Begin
  _Size := value;
End;

Procedure Matriz.SetVaule(r, c : _INDICE; value : Integer);
Begin
  _Item[r, c] := value;
End;

Procedure Matriz.LoadRandom(utill : Integer); // Carga aleatoria de la matriz
var rows, cols : _INDICE;
Begin
  Randomize;
  for rows := MIN TO _Size DO
    for cols := MIN TO _Size DO
    Begin
      _Item[rows, cols] := Random(utill) + 1;
    End;
End;

Function Matriz.ReturnItems(r: Integer; c: Integer) : Integer;
begin
  ReturnItems := _Item[r, c];
end;

Function Matriz.GetDimension() : Integer;
Begin
  GetDimension := _Size;
End;

Function Matriz.Sumar(m2 : Matriz) : Matriz;
var m3 : Matriz;
    rows, cols : Integer;
Begin
  m3.Setdimension(m2.GetDimension());

  for rows := MIN TO _Size DO
    for cols := MIN TO _Size DO
    Begin
      m3._Item[rows,cols] := _Item[rows,cols] + m2._Item[rows,cols];
    End;

  Sumar := m3;
End;

Function Matriz.Multiply(m2 : Matriz) : Matriz;
var m3 : Matriz;
    rows, cols, cs, resu, resu1 : Integer;
Begin
  m3.Setdimension(m2.GetDimension());
  for rows := MIN TO _Size DO
    for cols := MIN TO _Size DO
    Begin
      resu := 0;
      resu1 := 0;
      for cs := MIN TO (_Size) DO
      Begin
        // NOTA: Puse dos variables para que no me de valores ERRONEOS
        // Por alguna razon daba ese error y no me daba los valores correspondientes
        // a la operacion
        resu := _Item[rows, cs] * (m2._Item[cs, cols]);
        resu1 := resu1 + resu;
        //FIN NOTA

        m3._Item[rows, cols] := resu1;

      End;
    End;
  Multiply := m3;
End;

Function Matriz.GetMainDiagonal() : String;
Var i : Integer;
    MainDiagonal : String;
Begin
  MainDiagonal := '';

  for i := MIN TO _Size DO
  Begin
    MainDiagonal := MainDiagonal + IntToStr(_Item[i, i]);
  End;

  GetMainDiagonal := result;
End;

Function Matriz.GetOppositeDiagonal() : String;
Var rows, cols : Integer;
    OppositeDiagonal : String;
Begin
  OppositeDiagonal := '';
  cols := _Size;

  for rows := MIN TO _Size DO
  Begin
    OppositeDiagonal := OppositeDiagonal + IntToStr(_Item[rows, cols]);
    cols := cols - 1;
  End;
  GetOppositeDiagonal := OppositeDiagonal;
End;


    //asd
end.
