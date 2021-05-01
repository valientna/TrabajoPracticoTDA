unit VisualNueve;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CajaRegistradora, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPanels;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    PrincipalCardPane: TCardPanel;
    PagarCard: TCard;
    RetirarCard: TCard;
    PagarACajaBtn: TButton;
    RetirarDeLaCajaBtn: TButton;
    OpcionesCardPane: TCardPanel;
    OpcionesCard: TCard;
    CuentaBtn: TButton;
    PagarBtn: TButton;
    MemoPagar: TMemo;
    MemoRetirar: TMemo;
    Button1: TButton;
    BienvenidoCard: TCard;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PagarACajaBtnClick(Sender: TObject);
    procedure RetirarDeLaCajaBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CuentaBtnClick(Sender: TObject);
  private
  { Private declarations }
    _caja1 : CajasRegistradora;
    _vuelto : CajaRegistradora.RegisterBox;

  public
    { Public declarations }

  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}
uses Principal;


procedure TForm9.FormShow(Sender: TObject);
begin

  MemoPagar.Clear;
  MemoRetirar.Clear;

  BienvenidoCard.Show;

  _caja1.InitializeBox();
  _vuelto := _caja1.InitializeBoxBack();
end;

procedure TForm9.PagarACajaBtnClick(Sender: TObject);
begin
  MemoRetirar.Clear;

  BienvenidoCard.Hide;
  RetirarCard.Hide;
  PagarCard.Show;

end;

procedure TForm9.RetirarDeLaCajaBtnClick(Sender: TObject);
begin
  MemoPagar.Clear;

  BienvenidoCard.Hide;
  PagarCard.Hide;
  RetirarCard.Show;

end;

procedure TForm9.CuentaBtnClick(Sender: TObject);
begin
  MemoRetirar.Clear;
  MemoPagar.Clear;

  ///
  ///
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Principal.PrincipalForm.Show();
end;

end.
