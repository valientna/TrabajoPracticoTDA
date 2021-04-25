program TDA;

uses
  Vcl.Forms,
  ArreglosDinamicos in 'Objetos\ArreglosDinamicos.pas',
  Principal in 'Vistas\Principal.pas' {PrincipalForm},
  VisualUno in 'Vistas\VisualUno.pas' {Form1},
  VisualDos in 'Vistas\VisualDos.pas' {Form2},
  VisualTres in 'Vistas\VisualTres.pas' {Form3},
  Matrices in 'Objetos\Matrices.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipalForm, PrincipalForm);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
