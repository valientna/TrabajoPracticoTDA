unit Matrices;

interface
uses Math;

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
      Procedure SetVaule(r, c : _INDICE; value : Matriz);
      Procedure LoadRandom(utill : Integer);
      Function GetDimension() : Integer;
      Function Sumar(m2 : Matriz) : Matriz;
      Function Multiply(m2 : Matriz) : Matriz;

  End;


implementation

Procedure Matriz.SetDimension(value : Integer);
Begin
  _Size := value;
End;

Procedure Matriz.SetVaule(r, c : _INDICE; value : Matriz);
Begin
  _Item[r, c] := value._Item[r, c];
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
Begin
  m3.Setdimension(m2.GetDimension());

  Multiply := m3;
End;

end.
