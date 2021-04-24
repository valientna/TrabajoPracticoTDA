unit ArreglosDinamicos;

interface

Uses
  SysUtils, Math;

Const
  MIN = 1;
  MAX = 100000;

Type
  RetornoComparacion = (MAYOR, MENOR, IGUAL); // Enumerado

  Vector = Object
    Private
      _Items: Array Of LongInt;
      _nSize: LongInt;
    Public
      Procedure SetSize(aSize : LongInt);
      Procedure LoadRamdom(desde, hasta : LongInt);
      Procedure SetValues(aPos, Avalue : LongInt);
      Procedure Sort(aAsc: Boolean);
      Procedure QSort(aAsc: Boolean);
      Function get_nSise() : LongInt;
      Function Suma_Vector() : Double;
  End;

implementation

Procedure Vector.SetSize(aSize : LongInt);
begin
  _nSize := aSize;
end;

Procedure Vector.LoadRamdom(desde, hasta : LongInt);
Var I : LongInt;
begin
  Randomize;
  for I := MIN TO _nSize DO
  Begin
    _Items[I] := desde + Random(hasta - desde);
  End;
end;

Procedure Vector.SetValues(aPos, Avalue : LongInt);
begin

end;

Procedure Vector.Sort(aAsc: Boolean);
begin

end;
//--------------------------------------------------//
// Ordenamiento RAPIDO, uno de los mas eficientes   //
//--------------------------------------------------//
Procedure Vector.QSort(aAsc: Boolean);

  // Ordenamiento Ascendente
  Procedure OrdAsc(al_Firts, al_Last : LongInt);
    Var ll_Firts, ll_Last : LongInt;
        ll_centro : LongInt;
        ll_temp : LongInt;
  Begin
    ll_Firts := al_Firts;
    ll_Last := al_Last;
    ll_Centro := _Items [( al_Firts + al_Last ) div 2];

    Repeat
      While _Items[ll_Firts] < ll_centro Do
      Begin
        ll_Firts := ll_Firts + 1;
      End;
      While _Items[ll_Last] > ll_centro Do
      Begin
        ll_Last := ll_Last - 1;
      End;
      if al_Firts < ll_Last Then
      Begin
        ll_temp := _Items[ll_Firts];
        _Items[ll_Firts] := _Items[ll_Firts + 1];
        _Items[ll_Firts + 1] := ll_temp;
        ll_Firts := ll_Firts + 1;
        ll_Last := ll_Last -1;
      End;
    Until ll_Firts > ll_Last;

    If al_Firts < ll_Last Then
    Begin
      OrdAsc(al_Firts, ll_Last);
    End;
    If ll_Firts < al_Last Then
    Begin
      OrdAsc(ll_Firts, al_Last);
    End;
  End;

  // Ordenamiento Descendente
  Procedure OrdDesc(al_Firts, al_Last : LongInt);
      Var ll_Firts, ll_Last : LongInt;
        ll_centro : LongInt;
        ll_temp : LongInt;
  Begin
    ll_Firts := al_Firts;
    ll_Last := al_Last;
    ll_Centro := _Items [( al_Firts + al_Last ) div 2];

    Repeat
      While _Items[ll_Firts] > ll_centro Do
      Begin
        ll_Firts := ll_Firts + 1;
      End;
      While _Items[ll_Last] < ll_centro Do
      Begin
        ll_Last := ll_Last - 1;
      End;

      if al_Firts <= ll_Last Then
      Begin
        ll_temp := _Items[ll_Firts];
        _Items[ll_Firts] := _Items[ll_Firts + 1];
        _Items[ll_Firts + 1] := ll_temp;

        ll_Firts := ll_Firts + 1;
        ll_Last := ll_Last -1;
      End;
    Until ll_Firts < ll_Last;

    If al_Firts > ll_Last Then
    Begin
      OrdDesc(al_Firts, ll_Last);
    End;
    If ll_Firts > al_Last Then
    Begin
      OrdDesc(ll_Firts, al_Last);
    End;
  End;
                                  // asdasd
  // Proceso interno
Begin
  If _nSize > min Then
  Begin
    OrdAsc(min, _nSize);
  End
  Else
  Begin
    OrdDesc(min, _nSize);
  End;
End;

Function Vector.get_nSise() : LongInt;
begin
  get_nSise := _nSize;
end;

Function Vector.Suma_Vector() : Double;
Var
   I : LongInt;
   resultado : Double;
Begin
  resultado := 0;
  for I := min To _nSize do
  Begin
    resultado := resultado + _Items[I];
  End;
  Suma_Vector := resultado;
End;

end.
