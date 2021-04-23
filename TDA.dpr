program TDA;

uses
  Vcl.Forms,
  VisualDos in 'Vistas\VisualDos.pas' {Form1},
  VisualTres in 'Vistas\VisualTres.pas' {Form2},
  ArreglosDinamicos in 'Objetos\ArreglosDinamicos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
