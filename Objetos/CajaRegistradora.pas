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
      _moneyBack : RegisterBox;

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

implementation

Procedure CajasRegistradora.SetTyckets(i, v1 : Integer);
Begin
    case i of
    0 :
    Begin
      _Box[0].money := v1;
      _Box[0].status := true;
    End;
    1 :
    Begin
      _Box[1].money := v1;
      _Box[1].status := true;
    End;
    2 :
    Begin
      _Box[2].money := v1;
      _Box[2].status := true;
    End;
    3 :
    Begin
      _Box[3].money := v1;
      _Box[3].status := true;
    End;
    4 :
    Begin
      _Box[4].money := v1;
      _Box[4].status := true;
    End;
    5 :
    Begin
      _Box[5].money := v1;
      _Box[5].status := true;
    End;
    6 :
    Begin
      _Box[6].money := v1;
      _Box[6].status := true;
    End;
    7 :
    Begin
      _Box[7].money := v1;
      _Box[7].status := true;
    End;
    8 :
    Begin
      _Box[8].money := v1;
      _Box[8].status := true;
    End;
  End;
End;

Function CajasRegistradora.GetTicketsId(value1 : Integer) : Integer;
var i : Integer;
begin
    i := 0;
  // Si es mayor a 1000
    if (_Box[8].status) and (value1 >= GetTicketByType(8))Then
    begin
      i := 8;
    end
    // Si es mayor a 500 pero menor a 1000 pesos
    else if (_Box[7].status) and (value1 >= GetTicketByType(7)) Then{and (value1 < GetTicketByType(8))}
    begin
      i := 7;
    end
    // Si es mayor a 100 pero menor a 500 pesos
    else if (_Box[6].status) and (value1 >= GetTicketByType(6)) Then { and (value1 < GetTicketByType(7)) }
    begin
      i := 6;
    end
    // Si es mayor a 50 pero menor a 100 pesos
    else if (_Box[5].status) and (value1 >= GetTicketByType(5)) Then { and (value1 < GetTicketByType(6)) }
    begin
      i := 5;
    end
    // Si es mayor a 20 pero menor a 50 pesos
    else if (_Box[4].status) and (value1 >= GetTicketByType(4)) Then { and (value1 < GetTicketByType(5)) }
    begin
      i := 4;
    end
    // Si es mayor a 10 pero menor a 20 pesos
    else if (_Box[3].status) and (value1 >= GetTicketByType(3)) Then { and (value1 < GetTicketByType(6)) }
    begin
      i := 3;
    end
    // Si es mayor a 5 pero menor a 10 pesos
    else if (_Box[2].status) and (value1 >= GetTicketByType(2)) Then { and (value1 < GetTicketByType(4)) }
    begin
      i := 2;
    end
    // Si es mayor a 2 pero menor a 5 pesos
    else if (_Box[1].status) and (value1 >= GetTicketByType(6)) Then { and (value1 < GetTicketByType(7)) }
    begin
      i := 1;
    end
    // Si es igual a 1 peso
    else if (_Box[0].status) and (value1 >= GetTicketByType(0)) Then
    begin
      i := 0;
    end
    else 
      i := 20;

  GetTicketsId := i;
end;

Procedure CajasRegistradora.InitializeBox();
Var i : Integer;
begin
  for i := MIN to MAX Do
  Begin
//    _Box[i].money := 1;
    _Box[i].money := 0;
    _Box[i].types := TICKETS[i];
    _Box[i].status := false;
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
  if _Box[i].money > 0 Then
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

    if i = 20 then
    Begin
      MessageDlg('Por favor!! vea el estado de la caja', mtWarning, [mbOK], 0);
      Break;
    End;
  End;

  if amount > 0 Then
    MessageDlg('NO HAY SUFICIENTES FONDOS Faltando devolver ' + IntToStr(amount) + ' pesos', mtWarning, [mbOK], 0);

    GetMoney := _moneyBack;
End;

Function CajasRegistradora.GetAccountStatus(i : Integer) : String;
var status : String;
Begin
  status := 'Cantidad de billete/moneda es de '
            + IntToStr(_Box[i].money) + ' de '
            + _Box[i].types;
    
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
  total := 0;
  for i := MIN To MAX Do
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
