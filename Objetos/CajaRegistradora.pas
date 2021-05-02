unit CajaRegistradora;

interface

uses Math, System.SysUtils, Vcl.Dialogs;

// NOTA: Por costumbre tiendo a trabajar en vectores con el indice en 0
//       siempre y cuando el lenguaje lo permita
const MIN = 0;
      MAX = 8;
      MAXIMUMCAPACITY = 100;
      TICKETS : array[0..8] of string = ('Un Peso', 'Dos Pesos', 'Cinc oPesos', 'Diez Pesos', 'Veinte Pesos',
                                      'Cincuenta Pesos', 'Cien Pesos', 'Quinientos Pesos', 'Mil Pesos' );


Type
  // NOTA: Experimento...
  // _Money = (UnPeso, DosPesos, CincoPesos, DiezPesos, VeintePesos,
  //           CincuentaPesos, CienPesos, QuinientosPesos, MilPesos);
  _INDICE = MIN..MAX;
  _Value = Array[0..1] of Integer;
  //_Billetes = Array[_INDICE] of String;
  Registro = Record
              money: Integer;
              types: String;
              status: Boolean;
              totalMoney : Integer;
              end;

  RegisterBox = Array [0..8] of Record
              money: Integer;
              typess: String;
              End;
  CajasRegistradora = Object
    Private
    // Variables private
      _Box : Array [MIN..MAX] of Registro;
      _Size : _INDICE;
      _moneyBack : RegisterBox;
//      _Initialize : Boolean;

    // Metodos / Procedimientos private
      Procedure SetTyckets(i, v1 : Integer);
      Function GetTicketsId(value1 : Integer) : Integer;
    Public
    // Variables public

    // Metodos / Procedimientos public
      Procedure InitializeBox();
      Procedure SetMoney(i, v1 : Integer); Overload;
      Procedure SetMoney(i, j, v1, v2 : Integer); Overload;
      Procedure UpdateStatusBox(i : Integer);

      //Function OperationError() : Boolean;
      Function GetAmountInBoxById(i : Integer) : Integer;
      Function GetMoney(amount : Integer) : RegisterBox;
      Function InitializeBoxBack() : RegisterBox;
      Function GetAccountStatus(i : Integer) : String;
      Function GetBoxStatus() : Boolean;
      Function GetTotalAccount() : Integer;
      Function GetTicketByType(i : Integer) : Integer;
      Function TotalByTicketType(i : Integer) : Integer;

  End;
//--

implementation

Procedure CajasRegistradora.SetTyckets(i, v1 : Integer);
Begin
    case i of
    0 : _Box[0].money := v1;
    1 : _Box[1].money := v1;
    2 : _Box[2].money := v1;
    3 : _Box[3].money := v1;
    4 : _Box[4].money := v1;
    5 : _Box[5].money := v1;
    6 : _Box[6].money := v1;
    7 : _Box[7].money := v1;
    8 : _Box[8].money := v1;
  End;
End;

Function CajasRegistradora.GetTicketsId(value1 : Integer) : Integer;
var i : Integer;
begin
    i := 0;
  // Si es mayor a 1000
    if value1 > GetTicketByType(8) Then
    begin
      i := 8;
    end
    // Si es mayor a 500 pero menor a 1000 pesos
    else if (value1 >= GetTicketByType(7)) and (value1 < GetTicketByType(8)) Then
    begin
      i := 7;
    end
    // Si es mayor a 100 pero menor a 500 pesos
    else if (value1 >= GetTicketByType(6)) and (value1 < GetTicketByType(7)) Then
    begin
      i := 6;
    end
    // Si es mayor a 50 pero menor a 100 pesos
    else if (value1 >= GetTicketByType(5)) and (value1 < GetTicketByType(6)) Then
    begin
      i := 5;
    end
    // Si es mayor a 20 pero menor a 50 pesos
    else if (value1 >= GetTicketByType(4)) and (value1 < GetTicketByType(5)) Then
    begin
      i := 4;
    end
    // Si es mayor a 10 pero menor a 20 pesos
    else if (value1 >= GetTicketByType(3)) and (value1 < GetTicketByType(6)) Then
    begin
      i := 3;
    end
    // Si es mayor a 5 pero menor a 10 pesos
    else if (value1 >= GetTicketByType(2)) and (value1 < GetTicketByType(4)) Then
    begin
      i := 2;
    end
    // Si es mayor a 2 pero menor a 5 pesos
    else if (value1 >= GetTicketByType(6)) and (value1 < GetTicketByType(7)) Then
    begin
      i := 1;
    end
    // Si es igual a 1 peso
    else if (value1 = GetTicketByType(0)) Then
    begin
      i := 0;
    end;
  GetTicketsId := i;
end;

Procedure CajasRegistradora.InitializeBox();
Var i : Integer;
begin
  for i := MIN to MAX Do
  Begin
//    _Box[i].money := 1;
    _Box[i].money := 1;
    _Box[i].types := TICKETS[i];
    _Box[i].status := true;
    _Box[i].totalMoney := TotalByTicketType(i);
    End;
end;

Function CajasRegistradora.InitializeBoxBack() : RegisterBox;
Var i : Integer;
begin
  for i := MIN to MAX Do
  Begin
    _moneyBack[i].money := 0;
    _moneyBack[i].typess := TICKETS[i];
    End;
    InitializeBoxBack := _moneyBack;
end;

Procedure CajasRegistradora.SetMoney(i, v1 : Integer);
Begin
  SetTyckets(i, v1);
End;

Procedure CajasRegistradora.SetMoney(i, j, v1, v2 : Integer);
Begin
  SetTyckets(i, v1);
  SetTyckets(j, v2);
End;

Procedure CajasRegistradora.UpdateStatusBox(i : Integer);
begin
  if GetTicketByType(i) > 0 Then
    _Box[i].status := true
  else
    _Box[i].status := false;
end;

Function CajasRegistradora.GetAmountInBoxById(i : Integer) : Integer;
begin
  GetAmountInBoxById := _Box[i].money;
end;

Function CajasRegistradora.GetMoney(amount : Integer) : RegisterBox;
Var i : Integer;
    bol : Boolean;
Begin
  i := GetTicketsId(amount);
  bol := GetBoxStatus();

  while bol and (amount > 0) Do
  Begin
    while (_Box[i].status) and (amount > 0) and (amount >= GetTicketByType(i)) Do
    Begin
      _moneyBack[i].money := _moneyBack[i].money + 1;
      _Box[i].money := _Box[i].money - 1;
      amount := amount - GetTicketByType(i);
      UpdateStatusBox(i);
    End;
    i := GetTicketsId(amount);
    bol := GetBoxStatus();
  End;

  if amount > 0 Then
    ShowMessage('NO HAY SUFICIENTES FONDOS \r\n ' + 'Faltando devolver' + IntToStr(amount));

    GetMoney := _moneyBack;
End;

Function CajasRegistradora.GetAccountStatus(i : Integer) : String;
var status : String;
Begin
  status := 'La capacidad en la caja de billete/moneda es de '
            + _Box[i].types + ' '
            + IntToStr(_Box[i].money) + '/100';

  if _Box[i].money = 0 Then
    status := status + ' NO CONTIENE DINERO';
    
  GetAccountStatus := status;
End;

Function CajasRegistradora.GetBoxStatus() : Boolean;
Var status : Boolean;
    MaxTotal : Integer;
Begin
  MaxTotal := GetTotalAccount();

  if MaxTotal = 0 then
    status := false;
  if MaxTotal <> 0 then
    status := true;

  GetBoxStatus := status;
End;

Function CajasRegistradora.GetTotalAccount() : Integer;
Var total, i : Integer;
Begin
  for i := MIN To _Size Do
  begin
    total := total + TotalByTicketType(i);
  end;
  GetTotalAccount := total;
End;

Function CajasRegistradora.GetTicketByType(i : Integer) : Integer;
Var money : Integer;
begin
  case i of
      0: money := 1;
      1: money := 2;
      2: money := 5;
      3: money := 10;
      4: money := 20;
      5: money := 50;
      6: money := 100;
      7: money := 500;
      8: money := 1000;
  End;
  GetTicketByType := money;
end;

Function CajasRegistradora.TotalByTicketType(i : Integer) : Integer;
Var total : Integer;
begin
  case i of
      0: total := _Box[i].money * 1;
      1: total := _Box[i].money * 2;
      2: total := _Box[i].money * 5;
      3: total := _Box[i].money * 10;
      4: total := _Box[i].money * 20;
      5: total := _Box[i].money * 50;
      6: total := _Box[i].money * 100;
      7: total := _Box[i].money * 500;
      8: total := _Box[i].money * 1000;
  End;
  TotalByTicketType := total;
end;




End.
