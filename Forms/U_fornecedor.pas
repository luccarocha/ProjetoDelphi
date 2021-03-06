unit U_fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Formpadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_fornecedor = class(Tfrm_padrao)
    Q_padraoID_FORNECEDOR: TFDAutoIncField;
    Q_padraoNOME: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCNPJ: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoPAIS: TStringField;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    db_cadastro: TDBEdit;
    Label3: TLabel;
    db_nome: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_pesquisarClick(Sender: TObject);
    procedure ExibeTelaVisualizaFornecedor();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_fornecedor: Tfrm_fornecedor;

implementation

{$R *.dfm}

uses U_pesq_forne, U_Principal;

procedure Tfrm_fornecedor.bt_novoClick(Sender: TObject);
begin
  inherited;
  db_cadastro.Text := DateTostr(now);
  db_nome.SetFocus;
end;

procedure Tfrm_fornecedor.bt_pesquisarClick(Sender: TObject);
begin
  ExibeTelaVisualizaFornecedor;

end;

procedure Tfrm_fornecedor.ExibeTelaVisualizaFornecedor;
begin
  frm_pesq_forne := Tfrm_pesq_forne.Create(self);
  Frm_pesq_forne.ShowModal;

  try
      if Frm_pesq_forne.codigo > 0 then
        begin
          Q_padrao.Open();
          Q_padrao.Locate('ID_USUARIO',Frm_pesq_forne.codigo,[]);
        end;

  finally
    frm_pesq_forne.Free;
    frm_pesq_forne := nil;
  end;
end;

procedure Tfrm_fornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_principal.Panel2.Visible := false;

end;

end.
