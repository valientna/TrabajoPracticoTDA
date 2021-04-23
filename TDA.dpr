program TDA;

uses
  Vcl.Forms,
  VisualDos in 'Vistas\VisualDos.pas' {Form2},
  VisualTres in 'Vistas\VisualTres.pas' {Form3},
  ArreglosDinamicos in 'Objetos\ArreglosDinamicos.pas',
  ejercicio1 in 'Vistas\ejercicio1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
