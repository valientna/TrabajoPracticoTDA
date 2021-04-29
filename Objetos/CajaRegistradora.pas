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
{
    
    Aca les paso una definición de registro y vector
  Registro = Record
      campo1: Integer;
      campo2: String;
      campo3: variant;
    End;

    Vector = Array Of Registro;

  Boton donde le seteo la dimension
  procedure TForm1.Button1Click(Sender: TObject);
  Var V: Vector;
  begin
    SetLength(V, 10);
    V[1].campo1 := 100;
  end;
  Anda sin problema un registro con un vector dinamico
}

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

  CajasRegistradora = Object
  Private
    // Variables private
    _Box : Array of Registro;
    _Size : _INDICE;
    _Initialize : Boolean;

    // Metodos / Procedimientos private
    Procedure SetTyckets(i, v1 : Integer);
  Public
    // Variables public

    // Metodos / Procedimientos public
    Procedure InitializeBox();
    Procedure SetMoney(i, v1 : Integer); Overload;
    Procedure SetMoney(i, j, v1, v2 : Integer); Overload;

    Function GetMoney(i, amount : Integer) : Integer;
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

Procedure CajasRegistradora.InitializeBox();
Var i : Integer;
begin
  for i := MIN to MAX Do
  Begin
    _Box[i].money := 5;
    _Box[i].types := TICKETS[i];
    _Box[i].status := true;
    _Box[i].totalMoney := TotalByTicketType(i);
    End;
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

Function CajasRegistradora.GetMoney(i, amount : Integer) : Integer;
Var money, OriginAmount : Integer;
Begin
  OriginAmount := amount;
  if GetBoxStatus() then
  Begin
    money := 0;
    
    if amount > _Box[i].money then
      begin
        ShowMessage('No hay suficientes billetes/monedas para el monto que solicita');
      end
    else
      begin
        WHILE GetBoxStatus() and (_Box[i].money > 0) and (amount > 0) and (amount >= GetTicketByType(i)) Do
        Begin
          _Box[i].money := _Box[i].money - 1;
          money := money + 1;
          amount := amount - GetTicketByType(i);
        End;
        if amount > _Box[i].money Then
        Begin
          ShowMessage('No hay suficientes billetes/monedas para el monto que solicita. '
                    + 'Monto original ' + IntToStr(OriginAmount) + ', '
                    + 'faltando ' + IntToStr(amount));
        End
        
        else
        Begin

        End;
      end;    
  End
  else
  Begin
    ShowMessage('No hay fondos en la caja registradora');
    money := 0;
  End;


  GetMoney := money;//temp
End;

Function CajasRegistradora.GetAccountStatus(i : Integer) : String;
var status : String;
Begin
  status := 'La capacidad en la caja de billete/moneda es de'
            + _Box[i].types + ' '
            + IntToStr(_Box[i].money) + '/100';

  if _Box[i].money = 0 Then
    status := status + ' NO CONTIENE DINERO';
    
  GetAccountStatus := status;
End;

Function CajasRegistradora.GetBoxStatus() : Boolean;
Var status : Boolean;
    total : Integer;
Begin
  Maxtotal := GetTotalAccount();

  if Maxtotaltotal = 0 then
    status := false;
  if Maxtotaltotal <> 0 then
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
