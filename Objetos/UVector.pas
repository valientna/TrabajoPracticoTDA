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
      procedure SetearVector(Tamaño:integer);
      function devolvertamaño():integer;
      procedure InicializarBoleanos();
      procedure CargarAleatorio(Desde, Hasta, indice : integer);
      Function DevolverValorI(indice, i : integer):integer;
      Function ValidarVector(indice:integer): boolean;
      function ValidarTamaño(Desde, Hasta: integer): boolean;
      function ContarEspacios(Cadena : string): integer;
      procedure Parseo(Sproc: string; Separador : string; var aV : VectorString);
      procedure CargarManual(Cadena : string;indice : integer);
      Function Sumatoria(indice: integer): integer;
      function maximo(indice : integer) : string;
      function Minimo(indice : integer): string;
      Function Promedio(indice : integer): Single;
      Function Intercalar(indice: integer; Separador: string):unicodestring;
      Procedure Escalar(indice, esc: integer);
      procedure SumarVector(indice : integer; vectorsuma: string);


    End;

implementation

procedure obvector.SetearVector(Tamaño: Integer);
begin
setlength(Vector,4,tamaño);
tamañovector:=tamaño-1;
end;

procedure OBVector.InicializarBoleanos;
var i : integer;
begin
for i := 1 to length(VectorBoleano) do
  VectorBoleano[i]:=false;
end;

function OBvector.devolvertamaño():integer;
begin
  devolvertamaño:=tamañovector;
end;


procedure OBVEctor.CargarAleatorio;
var i : integer;
begin
  Randomize;
  Setlength(VectorBoleano, hasta);
  InicializarBoleanos;
  for i := 1 to length(vector) do begin
    Vector[indice, I]:= Random(Hasta)+desde;
    if VectorBoleano[Vector[indice, i]] then begin
      while VectorBoleano[Vector[indice, i]] do
        Vector[indice, I]:= Random(Hasta)+desde;
    end;

    VectorBoleano[Vector[indice, i]]:=True;
  end;


end;

Function obvector.DevolverValorI(indice, i: Integer):integer;
begin
devolvervalori:=Vector[indice, i];
end;

function obvector.ValidarVector(indice: Integer):boolean;
begin
if (indice>3) or (indice<1) then
 validarvector:=true
  else validarvector:= false;
end;

function obvector.ValidarTamaño(Desde: Integer; Hasta: Integer):boolean;
begin
if ((hasta-Desde)-1)<tamañovector then
  validartamaño:=true
  else validartamaño:=false;

end;

function obvector.ContarEspacios(Cadena: string):integer;
var i, contador : integer;
begin
contador:=0;
for i := 1 to length(cadena) do begin
  if cadena[i]=' ' then inc(contador);
end;
contarespacios:=contador;

end;

procedure obvector.Parseo(Sproc: string; Separador: string; var aV: VectorString);
var i, p : integer;
begin
i:=0;
p:= pos(separador, Sproc);
while p>0 do begin
  aV[i]:=copy(Sproc,1, p-1);
  inc (i);
  Sproc:= copy(sproc, p+1, length(sproc));
  p:=pos(separador, sproc);
end;

end;

procedure obvector.CargarManual(Cadena: string; indice:integer);
var
VecStrAux: VectorString;
i, espacios : integer;
begin
  espacios:= contarespacios(cadena);
  Setlength(VecStrAux, tamañovector);
  parseo(cadena, ' ', VecStrAux);


for i := 0 to tamañovector do begin
  vector[indice, i]:= strtoint(VecStrAux[i]);
end;

end;

function obvector.Sumatoria(indice: integer): integer;
var i, sumador  : integer;
begin
sumador:=0;
for i := 0 to tamañovector do begin
  sumador:= sumador + vector[indice, i];
end;

sumatoria:=sumador;

end;

function obvector.maximo(indice: Integer): string;
var i, maximoaux , posicion : integer;
begin
maximoaux:= vector[indice, 0];
posicion:= 0;
for i := 0 to tamañovector do begin
  if vector[indice, i]>maximoaux then begin
    maximoaux:= vector[indice, i];
    posicion:=i;
  end;
end;

posicion:= posicion+1;
maximo:=('El valor maximo es '+ maximoaux.ToString + ' en la posicion ' +  posicion.ToString);

end;

function obvector.Minimo(indice: Integer):string;
var i, minimoaux, posicion : integer;
begin
minimoaux:=vector[indice, 0];
posicion:= 0;
for i := 0 to tamañovector do begin
  if vector[indice, i]<minimoaux then begin
    minimoaux:=vector[indice, i];
    posicion:=i;
  end;
end;

posicion:= posicion+1;
minimo:=('El valor minimo es ' + minimoaux.ToString + ' en la posicion ' + posicion.ToString);

end;

function obvector.Promedio(indice: Integer): single;
var i, sumador : integer;
begin
sumador:=0;
for i := 0 to tamañovector do begin
  sumador:=sumador+ vector[indice, i];
end;

promedio:=sumador/(tamañovector+1);

end;

function obvector.Intercalar(indice:integer; Separador: string):unicodestring;
var i : integer;
cadenaaux:unicodestring;
begin
for i := 0 to tamañovector do  begin
  if i<>tamañovector then
    cadenaaux:= cadenaaux + vector[indice, i].ToString + separador
  else
    cadenaaux:= cadenaaux + vector[indice, i].ToString;
end;

intercalar:=cadenaaux;

end;

procedure obvector.Escalar(indice: Integer; esc: Integer);
var i : integer;
begin
for i := 0 to tamañovector do begin
  vector[indice, i]:=vector[indice, i]*esc;
end;

end;

procedure obvector.SumarVector(indice: Integer; vectorsuma: string);
var i :integer;
vecStrAux: vectorstring;
begin
vectorsuma:= vectorsuma+ ' ';
Setlength(VecStrAux, tamañovector);
parseo(vectorsuma, ' ', VecStrAux);

for i := 0 to tamañovector do begin
  vector[indice, i]:=vector[indice, i]+ strtoint(VecStrAux[i]);
end;

end;

end.
