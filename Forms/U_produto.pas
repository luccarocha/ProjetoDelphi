unit U_produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Formpadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_produto = class(Tfrm_padrao)
    Q_padraoID_PRODUTO: TIntegerField;
    Q_padraoPRODUTO_DESCRICAO: TStringField;
    Q_padraoVL_CUSTO: TFMTBCDField;
    Q_padraoVL_VENDA: TFMTBCDField;
    Q_padraoESTOQUE: TFMTBCDField;
    Q_padraoESTOQUE_MIN: TFMTBCDField;
    Q_padraoUNIDADE: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoNOME: TStringField;
    Label1: TLabel;
    db_id_produto: TDBEdit;
    Label2: TLabel;
    db_cadastro: TDBEdit;
    Label3: TLabel;
    db_descricao: TDBEdit;
    Label4: TLabel;
    db_custo: TDBEdit;
    Label5: TLabel;
    db_venda: TDBEdit;
    Label6: TLabel;
    db_estoque: TDBEdit;
    Label7: TLabel;
    db_estoque_min: TDBEdit;
    Label8: TLabel;
    db_id_fornecedor: TDBEdit;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    procedure bt_novoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_produto: Tfrm_produto;

implementation

{$R *.dfm}

procedure Tfrm_produto.bt_novoClick(Sender: TObject);
begin
  inherited;
  db_cadastro.Text := DateTostr(now);
  db_id_produto.SetFocus;
end;

end.