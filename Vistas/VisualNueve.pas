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
    procedure RetirarBtnClick(Sender: TObject);
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

  if (MasDeUnBilleteSwitch1.State = tssOff) then
  Begin
    if (MasDeUnBilleteSwitch1.State = tssOff) and (i = 9) then
    Begin
      MessageDlg('No a seleccionado el tipo de billete.', mtWarning, [mbOK], 0);
    End
    Else
    Begin
      v1 := StrToInt(BilleteEdit1.Text);
      if v1 = 0 Then
        MessageDlg('No ha ingresado ningun monto.', mtWarning, [mbOK], 0)
      else
        _caja1.SetMoney(i, v1);
        MemoPagar.Lines.Add('Se ha cargado exitosamente');
        MemoPagar.Lines.Add('Cantidades ingresadas del campo 1: ' + BilleteEdit1.Text + ' billetes de ' + BilleteComboBox1.Text + ' pesos');
    End;
  End
  else if (MasDeUnBilleteSwitch1.State = tssOn) and (j >= 0) and (j <= 8) then
  Begin
    j := BilleteComboBox2.ItemIndex;
    if (MasDeUnBilleteSwitch1.State = tssOn) and (j = 9) then
    Begin
      MessageDlg('No a seleccionado el tipo de billete.', mtWarning, [mbOK], 0)
    End

    Else
    Begin
    v1 := StrToInt(BilleteEdit1.Text);
    v2 := StrToInt(BilleteEdit2.Text);
    if v1 = 0 Then
      MessageDlg('No ha ingresado ningun monto en el primer campo.', mtWarning, [mbOK], 0)
    else if v2 = 0 Then
      MessageDlg('No ha ingresado ningun monto en el segundo campo.', mtWarning, [mbOK], 0)
    else
      Begin
      _caja1.SetMoney(i,j,v1,v2);
      MemoPagar.Lines.Add('Se ha cargado exitosamente...');
      MemoPagar.Lines.Add('Cantidades ingresadas del campo 1 es de ' + BilleteEdit1.Text + ' billetes de ' + BilleteComboBox1.Text + ' pesos');
      MemoPagar.Lines.Add('Cantidades ingresadas del campo 2 es de ' + BilleteEdit2.Text + ' billetes de ' + BilleteComboBox2.Text + ' pesos');
      End;
    End;

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

procedure TForm9.RetirarBtnClick(Sender: TObject);
var monto, i : Integer;

begin
  monto := 0;
  i := 0;
  MemoRetirar.Clear;
  monto := StrToInt(RetirarEdit.Text);

  if monto = 0 Then
    MessageDlg('No ha ingresado ningun monto a retirar.', mtWarning, [mbOK], 0)
  else
  Begin
    if _caja1.GetBoxStatus() then
    Begin
      _vuelto := _caja1.GetMoney(monto);

      /// NOTA: Aca se supone que tendria que traer el maximo del objeto
      ///  no lo hice por falta de tiempo
      for i := 0 To 8 Do
      Begin
        if _vuelto[i].money <> 0 Then
          MemoRetirar.Lines.Add('Cantidad de billetes/moneda es de ' + IntToStr(_vuelto[i].money) + ' de ' + _vuelto[i].typess);
      End;
    End
    else
      MessageDlg('No hay dinero en la caja!!.', mtWarning, [mbOK], 0)
  End;


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
var i : Integer;
begin
  MemoRetirar.Clear;
  MemoPagar.Clear;

  if RetirarCard.Active then
  Begin
    MemoRetirar.Lines.Add('---------- ESTADO DE LA CAJA ----------');
    for i := 0 To 8 Do
    Begin
      MemoRetirar.Lines.Add(_caja1.GetAccountStatus(i));
    End;
    MemoRetirar.Lines.Add('---------------------------------------');
  End
  else if PagarCard.Active then
  Begin
    MemoPagar.Lines.Add('---------- ESTADO DE LA CAJA ----------');
    for i := 0 To 8 Do
    Begin
      MemoPagar.Lines.Add(_caja1.GetAccountStatus(i));
    End;
    MemoPagar.Lines.Add('---------------------------------------');
  End
  else
    MessageDlg('Ingrese a (PAGAR O REGISTRAR) para ver el estado de la cuenta', mtError, [mbOK], 0);

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

  Principal.PrincipalForm.Show();
end;

end.
