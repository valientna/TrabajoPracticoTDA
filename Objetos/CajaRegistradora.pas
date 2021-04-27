unit CajaRegistradora;

interface

uses Math, System.SysUtils;

// NOTA: Por costumbre tiendo a trabajar en vectores con el indice en 0
//       siempre y cuando el lenguaje lo permita
const MIN = 0;
      MAX = 8;

Type
  // NOTA: Experimento...
  _Money = (UnPeso, DosPesos, CincoPesos, DiezPesos, VeintePesos, CincuentaPesos,
              CienPesos, QuinientosPesos, MilPesos);
  _INDICE = MIN..MAX;
  _Value = Array[0..1] of Integer;

  CajasRegistradora = Object
    Private
      // Variables
      // Inicilizo el array con diez moneda/billete para inicialmente poder hacer cualquier operacion
      _Box : Array[_INDICE] of Integer;
      _Size : _INDICE;
      
      // Metodos / Procedimientos

    Public
      { ACLARACION IMPORTANTE Ami personalmente me gusta trabajar mucho con sobrecargas
        y mas en estos casos Att: Franco Fernández }
      Procedure SetMoney(v1 : Integer); Overload;
      Procedure SetMoney(v1, v2 : Integer); Overload;

      Function GetMoney(v1 : Integer) : Integer; Overload;
      Function GetMoney(v1, v2 : Integer) : _Value; Overload;
      Function GetAccountStatus() : String;

    End;


implementation

Procedure CajasRegistradora.SetMoney(v1 : Integer);
Begin

End;

Procedure CajasRegistradora.SetMoney(v1, v2 : Integer);
Begin

End;

Function CajasRegistradora.GetMoney(v1 : Integer) : Integer;
Begin

  GetMoney := 2;//temp
End;

Function CajasRegistradora.GetMoney(v1, v2 : Integer) : _Value;
var sd1 : _Value;
Begin

  GetMoney := sd1;
End;

Function CajasRegistradora.GetAccountStatus() : String;
Begin

  GetAccountStatus := '';
End;

end.
