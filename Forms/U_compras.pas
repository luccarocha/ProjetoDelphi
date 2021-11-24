unit U_compras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_movimentopadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask;

type
  Tfrm_compras = class(Tfrm_padraomovimento)
    Q_padraoID_COMPRA: TFDAutoIncField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoVALOR: TFMTBCDField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    db_codcompra: TDBEdit;
    Label2: TLabel;
    db_codfornecedor: TDBEdit;
    Label3: TLabel;
    db_formapgto: TDBEdit;
    Label4: TLabel;
    db_cadastro: TDBEdit;
    Label5: TLabel;
    db_usuario: TDBEdit;
    Label6: TLabel;
    db_valor: TDBEdit;
    Q_forne: TFDQuery;
    ds_fornecedor: TDataSource;
    Q_formapgto: TFDQuery;
    ds_formapgto: TDataSource;
    Q_forneID_FORNECEDOR: TIntegerField;
    Q_forneNOME: TStringField;
    Q_formapgtoID_FORMA_PGTO: TIntegerField;
    Q_formapgtoDESCRICAO: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Q_padraoNOME: TStringField;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoitemID_SEQUENCIA: TIntegerField;
    Q_padraoitemID_COMPRA: TIntegerField;
    Q_padraoitemID_PRODUTO: TIntegerField;
    Q_padraoitemQTDE: TFMTBCDField;
    Q_padraoitemVL_CUSTO: TFMTBCDField;
    Q_padraoitemTOTAL_ITEM: TFMTBCDField;
    Q_padraoitemDESCONTO: TFMTBCDField;
    Panel4: TPanel;
    Label7: TLabel;
    db_codprod: TDBEdit;
    Label8: TLabel;
    db_qtde: TDBEdit;
    Label9: TLabel;
    db_vl_custo: TDBEdit;
    Label10: TLabel;
    db_desconto: TDBEdit;
    Label11: TLabel;
    db_vl_item: TDBEdit;
    Q_produtos: TFDQuery;
    Q_padraoitemDESCRICAO: TStringField;
    Q_padraoitemSUBTOTAL: TAggregateField;
    db_subtotal: TDBEdit;
    Label12: TLabel;
    Panel5: TPanel;
    Label13: TLabel;
    db_aux1: TDBEdit;
    Label14: TLabel;
    db_aux2: TDBEdit;
    Label15: TLabel;
    db_aux3: TDBEdit;
    Label16: TLabel;
    db_aux4: TDBEdit;
    Label17: TLabel;
    db_aux5: TDBLookupComboBox;
    Label18: TLabel;
    db_aux6: TDBLookupComboBox;
    Label19: TLabel;
    Panel6: TPanel;
    DBNavigator2: TDBNavigator;
    bt_save2: TBitBtn;
    bt_itens: TBitBtn;
    procedure bt_newClick(Sender: TObject);
    procedure bt_itemClick(Sender: TObject);
    procedure db_codprodExit(Sender: TObject);
    procedure bt_confirmarClick(Sender: TObject);
    procedure db_descontoExit(Sender: TObject);
    procedure db_descontoClick(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure bt_editClick(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
    procedure bt_itensClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_compras: Tfrm_compras;

implementation

{$R *.dfm}

uses U_DM;

procedure Tfrm_compras.bt_confirmarClick(Sender: TObject);
begin

  Q_padrao.Edit;
  Q_padraoValor.AsFloat := Q_padraoitem.AggFields.FieldByName('SUBTOTAL').Value;
  Q_padrao.Post;

  //Atualiza estoque

  Q_padraoitem.First;

  while not Q_padraoitem.eof do
    begin
      if Q_produtos.Locate('ID_PRODUTO', Q_padraoitemID_PRODUTO.AsInteger, []) then
        begin
          Q_produtos.Edit;
          Q_produtos.FieldByName('ESTOQUE').AsFloat :=
          Q_produtos.FieldByName('ESTOQUE').AsFloat +
          Q_padraoitemQTDE.AsFloat;
          Q_padraoitem.Next;
        end;

    end;

    Q_produtos.Refresh;
    MessageDlg('Valor Atualizado!', mtInformation, [mbOk], 0);

    if MessageDlg('Deseja finalizar compra?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
      begin
        Panel4.Visible := false;
        Panel1.Visible := false;
        Panel5.Visible := false;
        bt_itens.Enabled := true;
        painel0.Visible := true;
        Panel3.Visible := true;


      end
      else
      abort;
end;

procedure Tfrm_compras.bt_delClick(Sender: TObject);
begin
  //exclui item detalhe
if MessageDlg('Deseja excluir esse item da compra?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
  begin
    if Q_produtos.Locate('ID_PRODUTO', Q_padraoitemID_PRODUTO.AsInteger, []) then
      begin
        Q_produtos.Edit;
        Q_produtos.FieldByName('ESTOQUE').AsFloat :=
        Q_produtos.FieldByName('ESTOQUE').AsFloat -
        Q_padraoitemQTDE.AsFloat;
        Q_produtos.Refresh;
        Q_padraoitem.Delete;
        MessageDlg('Produto exclu�do corretamente!', mtInformation, [mbOk], 0);
      end;
  end
  else
  abort;

end;

procedure Tfrm_compras.bt_editClick(Sender: TObject);
begin
  inherited;
  Panel6.Visible := true;
  Panel4.Visible := true;
  Panel1.Visible := true;
  Panel5.Visible := true;
  db_aux1.Enabled := true;
  db_aux2.Enabled := true;
  db_aux3.Enabled := true;
  db_aux4.Enabled := true;
  db_aux5.Enabled := true;
  db_aux6.Enabled := true;
  bt_save2.Enabled := true;
  painel0.Visible := false;
  Panel3.Visible := false;
end;

procedure Tfrm_compras.bt_itemClick(Sender: TObject);
  var proximo : integer;

begin
  //insere os itens na tabela de itens compras
  Q_padraoitem.Open;
  Q_padraoitem.Last; //ultimo registro
  proximo :=  Q_padraoitemID_SEQUENCIA.AsInteger + 1;  //prox recebe valor id_seq e acrecenta 1
  Q_padraoitem.Append; // abre linha tabela pra insers�o
  Q_padraoitemID_SEQUENCIA.AsInteger := proximo;  // id_seq recebe conteudo de proximo
  db_codprod.SetFocus;
end;

procedure Tfrm_compras.bt_itensClick(Sender: TObject);
begin
  Panel1.Visible := true;
  Panel4.Visible := true;
  Panel5.Visible := true;
  Panel3.Visible := false;
  painel0.Visible := false;

end;

procedure Tfrm_compras.bt_newClick(Sender: TObject);
begin
  inherited;
  Q_padraoCADASTRO.AsDateTime := Date;
  Q_padraoUSUARIO.AsString := 'LUCCA ALMEIDA';
  Q_padraoVALOR.AsCurrency := 0;
  db_valor.SetFocus;
end;

procedure Tfrm_compras.bt_save2Click(Sender: TObject);
begin
  inherited;
  Messagedlg('Editado com Sucesso!', mtInformation, [mbOk], 0);

  if MessageDlg('Deseja continuar editando?', mtConfirmation, [mbOk, mbNo], 0) = mrNo then
      begin
        Panel5.Visible := false;
        Panel6.Visible := false;
        Panel4.Visible := false;
        Panel1.Visible := false;
        bt_itens.Enabled := false;
        painel0.Visible := true;
        Panel3.Visible := true;
      end
      else
      abort;

end;

procedure Tfrm_compras.bt_saveClick(Sender: TObject);
begin
  inherited;
  Messagedlg('Compra iniciada!', mtInformation, [mbOk], 0);
  Panel1.Visible := true;
  Panel4.Visible := true;
  Panel5.Visible := true;
  Panel3.Visible := false;
  painel0.Visible := false;

end;

procedure Tfrm_compras.db_codprodExit(Sender: TObject);
begin

  if Q_padraoitemID_PRODUTO.AsInteger > 0 then
    if Q_produtos.Locate('ID_PRODUTO', Q_padraoitem.FieldByName('ID_PRODUTO').AsInteger, []) then

    begin
      Q_padraoitemQTDE.AsFloat := 1;
      Q_padraoitemDESCONTO.AsFloat := 0;
      //recebe valor do produto
      Q_padraoitemVL_CUSTO.AsFloat := Q_produtos.FieldByName('vl_custo').AsFloat;
      //calculo com quantidade e desconto
      Q_padraoitemTOTAL_ITEM.AsFloat := (Q_padraoitemQTDE.AsFloat *
      Q_padraoitemVL_CUSTO.AsFloat) - (Q_padraoitemDESCONTO.AsFloat);
      Q_padraoitem.Post;
      bt_item.SetFocus;
    end
    else
    MessageDlg('Produto n�o localizado!', mtInformation, [mbOk], 0);
    Q_padraoitem.Cancel;
    bt_item.SetFocus;
end;

procedure Tfrm_compras.db_descontoClick(Sender: TObject);
begin
  Q_padraoitem.Edit;

end;

procedure Tfrm_compras.db_descontoExit(Sender: TObject);

begin
  Q_padraoitemTOTAL_ITEM.AsFloat := (Q_padraoitemQTDE.AsFloat *
  Q_padraoitemVL_CUSTO.AsFloat) - (Q_padraoitemDESCONTO.AsFloat);
  Q_padraoitem.Refresh;
end;

end.
