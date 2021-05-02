unit VisualNueve;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CajaRegistradora, Vcl.StdCtrls, Math,
  Vcl.ExtCtrls, Vcl.WinXPanels, Vcl.WinXCtrls;

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
    RetirarBtn: TButton;
    BienvenidoCard: TCard;
    Label1: TLabel;
    SalirDeRetirarBtn: TButton;
    RetirarEdit: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    SalirDePagarBtn: TButton;
    PrincipalBtn: TButton;
    Label4: TLabel;
    BilleteEdit1: TEdit;
    BilleteEdit2: TEdit;
    BilleteComboBox1: TComboBox;
    MasDeUnBilleteSwitch1: TToggleSwitch;
    BilleteComboBox2: TComboBox;
    SalirDeForm: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PagarACajaBtnClick(Sender: TObject);
    procedure RetirarDeLaCajaBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SalirDeFormClick(Sender: TObject);
    procedure SalirDeRetirarBtnClick(Sender: TObject);
    procedure SalirDePagarBtnClick(Sender: TObject);
    procedure PrincipalBtnClick(Sender: TObject);
    procedure MasDeUnBilleteSwitch1Click(Sender: TObject);
    procedure CuentaBtnClick(Sender: TObject);
    procedure PagarBtnClick(Sender: TObject);
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
  MemoPagar.Clear;
  MemoRetirar.Clear;

  BienvenidoCard.Hide;
  RetirarCard.Hide;
  PagarCard.Show;

end;

procedure TForm9.PagarBtnClick(Sender: TObject);
Var v1, v2, i, j : Integer;
    res : String;
begin
  i := BilleteComboBox1.ItemIndex;

  if (MasDeUnBilleteSwitch1.State = tssOff) and (i >= 0) and (i <= 8) then
    Begin
      ///
      ///
    End
    else if (MasDeUnBilleteSwitch1.State = tssOff) and (i = 9) then
    Begin
      MessageDlg('No a seleccionado el tipo de billete.', mtWarning, [mbOK], 0)
    End
    else if (MasDeUnBilleteSwitch1.State = tssOn) and true then
    Begin
      ///
      ///
    End
    else if (MasDeUnBilleteSwitch1.State = tssOn) and true then
    Begin
      MessageDlg('No a seleccionado el tipo de billete.', mtWarning, [mbOK], 0)
    End;



end;

procedure TForm9.PrincipalBtnClick(Sender: TObject);
begin
  MemoPagar.Clear;
  MemoRetirar.Clear;

  RetirarCard.Hide;
  PagarCard.Hide;
  BienvenidoCard.Show;

end;

procedure TForm9.RetirarDeLaCajaBtnClick(Sender: TObject);
begin
  MemoPagar.Clear;
  MemoRetirar.Clear;

  BienvenidoCard.Hide;
  PagarCard.Hide;
  RetirarCard.Show;

end;

procedure TForm9.SalirDePagarBtnClick(Sender: TObject);
begin
  MemoPagar.Clear;
  MemoRetirar.Clear;

  PagarCard.Hide;
  BienvenidoCard.Show;
end;

procedure TForm9.SalirDeRetirarBtnClick(Sender: TObject);
begin
  MemoPagar.Clear;
  MemoRetirar.Clear;

  RetirarCard.Hide;
  BienvenidoCard.Show;
end;

procedure TForm9.MasDeUnBilleteSwitch1Click(Sender: TObject);
begin
  if MasDeUnBilleteSwitch1.State = tssOff then
  Begin
    BilleteEdit2.Enabled := false;
    BilleteComboBox2.Enabled := false;
  End
  else if MasDeUnBilleteSwitch1.State = tssOn then
  Begin
    BilleteEdit2.Enabled := true;
    BilleteComboBox2.Enabled := true;
  End;

end;

procedure TForm9.SalirDeFormClick(Sender: TObject);
var opcion : Integer;
begin
  opcion := 0;
  opcion := MessageDlg('¿Desea salir del ejercicio?', mtWarning, mbYesNo, 0);

  case opcion of
  6 :
  Begin
    Form9.Hide;
    PrincipalForm.Show;
  End;
  end;

end;

procedure TForm9.CuentaBtnClick(Sender: TObject);
begin
  MemoRetirar.Clear;
  MemoPagar.Clear;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
var opcion : Integer;
begin
  opcion := MessageDlg('¿Desea salir del ejercicio?', mtWarning, mbYesNo, 0);

  case opcion of
  6 :
    Begin
      Form9.Hide;
      Principal.PrincipalForm.Show();
    End;
  End;

end;

end.
