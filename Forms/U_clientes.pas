unit U_clientes;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Formpadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;
type
  Tfrm_clientes = class(Tfrm_padrao)
    Q_padraoID_CLIENTE: TFDAutoIncField;
    Q_padraoNOME: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCPF: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    db_nome: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    db_cadastro: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_pesquisarClick(Sender: TObject);
    procedure ExibeTelaVisualizaCliente();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frm_clientes: Tfrm_clientes;
implementation
{$R *.dfm}
uses U_pesq_client, U_Principal;
procedure Tfrm_clientes.bt_novoClick(Sender: TObject);
begin
  inherited;
  db_cadastro.Text := DateTostr(now);
  db_nome.SetFocus;
end;
procedure Tfrm_clientes.bt_pesquisarClick(Sender: TObject);
begin
  ExibeTelaVisualizaCliente;

end;
procedure Tfrm_clientes.ExibeTelaVisualizaCliente;
begin
  begin
    frm_pesq_client := Tfrm_pesq_client.Create(self);
    Frm_pesq_client.ShowModal;
    try
      if Frm_pesq_client.codigo > 0 then
        begin
          Q_padrao.Open();
          Q_padrao.Locate('ID_CLIENTE',Frm_pesq_client.codigo,[]);
        end;
    finally
      frm_pesq_client.Free;
      frm_pesq_client := nil;
    end;
  end;
end;
procedure Tfrm_clientes.FormActivate(Sender: TObject);
begin
  frm_principal.Panel2.Visible := false;
  frm_principal.Panel2.Visible := true;

end;

procedure Tfrm_clientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_principal.Panel2.Visible := false;

end;

end.
