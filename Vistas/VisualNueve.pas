unit VisualNueve;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CajaRegistradora, Vcl.StdCtrls;

type
  TForm9 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    Procedure holaa();
  end;

var
  Form9: TForm9;
  caja : CajaRegistradora.CajasRegistradora;

implementation

{$R *.dfm}
uses Principal;


Procedure TForm9.holaa();
Begin

End;


procedure TForm9.Button1Click(Sender: TObject);
begin
///asd

  Memo1.Lines.Add('asd');
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Principal.PrincipalForm.Show();
end;

end.
