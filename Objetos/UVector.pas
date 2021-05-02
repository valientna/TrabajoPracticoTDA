unit UVector;

interface

uses
  sysutils, math;

type
  VectorString = array of string;
  Bector = array of integer;

  OBVector = Object
    Private
      Vector: array of Bector;
      VectorBoleano: array of boolean;
      tamañovector: integer;

    public
      Procedure SetearVector(Tamaño:integer);
      Procedure InicializarBoleanos();
      Procedure CargarAleatorio(Desde, Hasta, indice : integer);
      Procedure CargarManual(Cadena : string;indice : integer);
      Procedure CargarManualV1(i, indice, value : integer);
      Procedure Parseo(Sproc: string; Separador : string; var aV : VectorString);
      Procedure Escalar(indice, esc: integer);
      Procedure SumarVector(indice : integer; vectorsuma: string);
      
      Function DevolverValorI(indice, i : integer):integer;
      Function devolvertamaño():integer;
      Function ValidarVector(indice:integer): boolean;
      Function ValidarTamaño(Desde, Hasta: integer): boolean;
      Function ContarEspacios(Cadena : string): integer;
      Function Sumatoria(indice: integer): integer;
      Function maximo(indice : integer) : string;
      Function Minimo(indice : integer): string;
      Function Promedio(indice : integer): Single;
      Function Intercalar(indice: integer; Separador: string):unicodestring;


    End;

implementation

Procedure obvector.SetearVector(Tamaño: Integer);
Begin
  setlength(Vector,4,tamaño);
  tamañovector := tamaño-1;
End;

Procedure OBVector.InicializarBoleanos;
var i : integer;
Begin
for i := 1 TO length(VectorBoleano) DO
  VectorBoleano[i]:=false;
End;

Function OBvector.devolvertamaño():integer;
Begin
  devolvertamaño:=tamañovector;
End;


Procedure OBVEctor.CargarAleatorio;
var i : integer;
Begin
  Randomize;
  Setlength(VectorBoleano, hasta);
  InicializarBoleanos;
  
  for i := 1 TO length(vector) DO
  Begin
    Vector[indice, I]:= Random(Hasta)+desde;
    
    if VectorBoleano[Vector[indice, i]] then Begin
      while VectorBoleano[Vector[indice, i]] DO
        Vector[indice, I]:= Random(Hasta)+desde;
    End;

    VectorBoleano[Vector[indice, i]]:=True;
  End;


End;

Function obvector.DevolverValorI(indice, i: Integer):integer;
Begin
devolvervalori:=Vector[indice, i];
End;

Function obvector.ValidarVector(indice: Integer):boolean;
Begin
if (indice>3) or (indice<1) then
 validarvector:=true
  else validarvector:= false;
End;

Function obvector.ValidarTamaño(Desde: Integer; Hasta: Integer):boolean;
Begin
if ((hasta-Desde)-1)<tamañovector then
  validartamaño:=true
  else validartamaño:=false;

End;

Function obvector.ContarEspacios(Cadena: string):integer;
var i, contador : integer;
Begin
contador:=0;
for i := 1 TO length(cadena) DO Begin
  if cadena[i]=' ' then inc(contador);
End;
contarespacios:=contador;

End;

Procedure obvector.Parseo(Sproc: string; Separador: string; var aV: VectorString);
var i, p : integer;
Begin
i:=0;
p:= pos(separador, Sproc);
while p>0 DO Begin
  aV[i]:=copy(Sproc,1, p-1);
  inc (i);
  Sproc:= copy(sproc, p+1, length(sproc));
  p:=pos(separador, sproc);
End;

End;

Procedure obvector.CargarManual(Cadena: string; indice:integer);
var
  VecStrAux: VectorString;
  i, espacios : integer;
Begin
    espacios:= contarespacios(cadena);
    Setlength(VecStrAux, tamañovector);
    parseo(cadena, ' ', VecStrAux);


  for i := 0 TO tamañovector DO Begin
    vector[indice, i]:= strtoint(VecStrAux[i]);
  End;

End;

Procedure obvector.CargarManualV1(i, indice, value : integer);
Begin
  Vector[i, indice] := value;
End;

Function obvector.Sumatoria(indice: integer): integer;
var i, sumador  : integer;
Begin
sumador:=0;
for i := 0 TO tamañovector DO Begin
  sumador:= sumador + vector[indice, i];
End;

sumatoria:=sumador;

End;

Function obvector.maximo(indice: Integer): string;
var i, maximoaux , posicion : integer;
Begin
maximoaux:= vector[indice, 0];
posicion:= 0;
for i := 0 TO tamañovector DO Begin
  if vector[indice, i]>maximoaux then Begin
    maximoaux:= vector[indice, i];
    posicion:=i;
  End;
End;

posicion:= posicion+1;
maximo:=('El valor maximo es '+ maximoaux.ToString + ' en la posicion ' +  posicion.ToString);

End;

Function obvector.Minimo(indice: Integer):string;
var i, minimoaux, posicion : integer;
Begin
minimoaux:=vector[indice, 0];
posicion:= 0;
for i := 0 TO tamañovector DO Begin
  if vector[indice, i]<minimoaux then Begin
    minimoaux:=vector[indice, i];
    posicion:=i;
  End;
End;

posicion:= posicion+1;
minimo:=('El valor minimo es ' + minimoaux.ToString + ' en la posicion ' + posicion.ToString);

End;

Function obvector.Promedio(indice: Integer): single;
var i, sumador : integer;
Begin
sumador:=0;
for i := 0 TO tamañovector DO Begin
  sumador:=sumador+ vector[indice, i];
End;

promedio:=sumador/(tamañovector+1);

End;

Function obvector.Intercalar(indice:integer; Separador: string):unicodestring;
var i : integer;
cadenaaux:unicodestring;
Begin
for i := 0 TO tamañovector DO  Begin
  if i<>tamañovector then
    cadenaaux:= cadenaaux + vector[indice, i].ToString + separador
  else
    cadenaaux:= cadenaaux + vector[indice, i].ToString;
End;

intercalar:=cadenaaux;

End;

Procedure obvector.Escalar(indice: Integer; esc: Integer);
var i : integer;
Begin
for i := 0 TO tamañovector DO Begin
  vector[indice, i]:=vector[indice, i]*esc;
End;

End;

Procedure obvector.SumarVector(indice: Integer; vectorsuma: string);
var i :integer;
vecStrAux: vectorstring;
Begin
vectorsuma:= vectorsuma+ ' ';
Setlength(VecStrAux, tamañovector);
parseo(vectorsuma, ' ', VecStrAux);

for i := 0 TO tamañovector DO Begin
  vector[indice, i]:=vector[indice, i]+ strtoint(VecStrAux[i]);
End;

End;

End.
