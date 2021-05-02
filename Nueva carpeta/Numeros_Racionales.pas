unit Numeros_Racionales;

interface
  uses sysutils, math;
  type
    Tipo_Comparacion = (MAYOR, IGUAL, MENOR);
    NumerosRacionales = object
      private
        numerador, denominador : integer;
      public
        function Asignar_Valor(p, q:integer): boolean;
        function Valor_A_STR():string;
        function Obtener_Denominador():integer;
        function Obtener_Numerador():integer;
        function Aproximado(): single;

        function sumar(Q2: NumerosRacionales):NumerosRacionales;
        function restar(Q2: NumerosRacionales):NumerosRacionales;
        function multiplicar(Q2: NumerosRacionales):NumerosRacionales;
        function dividir(Q2: NumerosRacionales; var Q3:NumerosRacionales):boolean;
        function potencia(e: integer): NumerosRacionales;
        function comparar(Q2: NumerosRacionales): Tipo_Comparacion;
    end;
implementation
function NumerosRacionales.Asignar_Valor(p, q:integer): boolean;
var b:boolean;
begin
  b:= true;
  if q = 0 then
    b:= false
  else begin
    numerador:= p;
    denominador:= q;
    if q < 0 then begin
      numerador:= numerador*(-1);
      denominador:= denominador*(-1);
    end;


  end;
  Asignar_valor := b;
end;
function NumerosRacionales.Valor_A_STR():string;
begin
  Valor_A_STR:= numerador.ToString + '/' + denominador.ToString
end;
function NumerosRacionales.Obtener_Denominador():integer;
begin
  Obtener_Denominador:= denominador
end;
function NumerosRacionales.Obtener_Numerador():integer;
begin
  Obtener_Numerador:= numerador
end;
function NumerosRacionales.Aproximado(): single;
begin
  Aproximado:= numerador div denominador;
end;

function NumerosRacionales.sumar(Q2: NumerosRacionales):NumerosRacionales;
var n2, d2, p, q:integer;
    Q3: NumerosRacionales;
begin
  n2:= Q2.Obtener_Numerador;
  d2:= Q2.Obtener_Denominador;
  q:= denominador * d2;
  p:= trunc(q/denominador) * numerador + trunc(q/d2)*n2;
  Q3.Asignar_Valor(p,q);
  sumar:= Q3;
end;
function NumerosRacionales.restar(Q2: NumerosRacionales):NumerosRacionales;
var n2, d2, p, q:integer;
    Q3: NumerosRacionales;
begin
  n2:= Q2.Obtener_Numerador;
  d2:= Q2.Obtener_Denominador;
  q:= denominador * d2;
  p:= trunc(q/denominador) * numerador - trunc(q/d2)*n2;
  Q3.Asignar_Valor(p,q);
  restar:= Q3;
end;
function NumerosRacionales.multiplicar(Q2: NumerosRacionales):NumerosRacionales;
var p, q: integer;
      Q3: NumerosRacionales;
begin
  p:= numerador * Q2.Obtener_Numerador;
  q:= denominador * Q2.Obtener_Denominador;
  Q3.Asignar_valor(p,q);
  multiplicar:= Q3;
end;
function NumerosRacionales.dividir(Q2: NumerosRacionales; var Q3:NumerosRacionales):boolean;
var p,q:integer;
    b:boolean;
begin
  b:= true;
  q:= Q2.Obtener_Numerador;
  if q <> 0 then begin
    p:= numerador * Q2.Obtener_Denominador;
    q:= denominador * q;
    Q3.Asignar_Valor(p,q);
  end
  else
    b:= false;
  dividir:=b;
end;
function NumerosRacionales.potencia(e: integer): NumerosRacionales;
var Q2:NumerosRacionales;
    s1, s2: single;
begin
 if e < 0  then begin
   e:=e * (-1);
   s2:= numerador;
   s1:= denominador;

 end
 else begin
   s1:= numerador;
   s2:= denominador;
 end;
 s1:= intpower(s1,e);
 s2:= intpower(s2,e);
 Q2.Asignar_Valor(trunc(s1),trunc(s2));
 potencia:= Q2;
end;
function NumerosRacionales.comparar(Q2: NumerosRacionales): Tipo_Comparacion;
var n2,d2: integer;
    r:Tipo_Comparacion;
begin
  n2:= Q2.Obtener_Numerador;
  d2:= Q2.Obtener_Denominador;
  if (numerador * d2) > (denominador * n2) then
    r:= MAYOR
  else
    if(numerador * d2) = (denominador * n2)then
      r:= IGUAL
    else
      r:= MENOR;
  comparar:= r
end;
end.
