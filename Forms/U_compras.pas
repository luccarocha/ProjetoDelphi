unit U_compras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_movimentopadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.ComCtrls;

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
    cb_fornecedor: TDBLookupComboBox;
    cb_idformapgto: TDBLookupComboBox;
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
    BitBtn2: TBitBtn;
    Q_padraoCOND_PGTO: TIntegerField;
    Label20: TLabel;
    db_condpgto: TDBEdit;
    db_aux7: TDBEdit;
    Label21: TLabel;
    Q_contaapagar: TFDQuery;
    ds_contaapagar: TDataSource;
    Q_contaapagarID_SEQUENCIA: TIntegerField;
    Q_contaapagarID_COMPRA: TIntegerField;
    Q_contaapagarVALOR_PARCELA: TFMTBCDField;
    Q_contaapagarDT_PAGAMENTO: TDateField;
    Q_contaapagarATRASO: TIntegerField;
    Q_contaapagarJUROS: TFMTBCDField;
    Q_contaapagarVL_JUROS: TFMTBCDField;
    Q_contaapagarTOTAL_PAGAR: TFMTBCDField;
    Q_contaapagarSTATUS: TStringField;
    Q_contaapagarDT_VENCIMENTO: TDateField;
    DBEdit1: TDBEdit;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure bt_excluirClick(Sender: TObject);
    procedure bt_pesquisarClick(Sender: TObject);
    procedure db_vl_itemChange(Sender: TObject);
    procedure cb_fornecedorClick(Sender: TObject);
    procedure cb_idformapgtoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frm_compras: Tfrm_compras;

implementation

{$R *.dfm}

uses U_DM, U_pesq_compra, U_Principal;

procedure Tfrm_compras.BitBtn1Click(Sender: TObject);
begin
  botoes;
  Q_padrao.Cancel;
  Messagedlg('A??o cancelada pelo usu?rio!', mtInformation, [mbOk], 0);
  bt_edit.Enabled := false;
  bt_atualizar.Enabled := false;
  bt_excluir.Enabled := false;
  bt_save.Enabled := false;
  bt_new.Enabled := true;

end;

procedure Tfrm_compras.bt_confirmarClick(Sender: TObject);
var parcela: Integer;
    diferenca, soma : Real;
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

    //Insere parcela
    parcela := 1;

    Q_contaapagar.Open;

    if  Q_contaapagar.Locate('ID_COMPRA', db_aux1.Text,[]) then
      begin
      if (Q_padraoID_FORMA_PGTO.Value = 2) or (Q_padraoID_FORMA_PGTO.Value = 4) then
      begin
        while parcela <= Q_padraoCOND_PGTO.AsInteger do
          begin
            Q_contaapagar.Edit;
            Q_contaapagarID_SEQUENCIA.AsInteger := parcela;
            Q_contaapagar.FieldByName('valor_parcela').AsFloat :=
            Q_padraoVALOR.AsFloat / Q_padraoCOND_PGTO.Value;
            Q_contaapagar.FieldByName('dt_vencimento').Value :=date;
            Q_contaapagar.FieldByName('dt_pagamento').Value :=date;
            Q_contaapagar.FieldByName('atraso').AsFloat :=0;
            Q_contaapagar.FieldByName('juros').AsFloat := 0;
            Q_contaapagar.FieldByName('vl_juros').AsFloat := 0;
            Q_contaapagar.FieldByName('total_pagar').AsFloat :=
            Q_contaapagar.FieldByName('valor_parcela').AsFloat;
            Q_contaapagar.FieldByName('status').AsString := 'F';
            Q_contaapagar.Post;
            inc(parcela);
          end;
     end
     else
     Q_contaapagar.First;

     while parcela <= Q_padraoCOND_PGTO.AsInteger do
        begin
          Q_contaapagar.Edit;
          Q_contaapagarID_SEQUENCIA.AsInteger := parcela;
          Q_contaapagar.FieldByName('valor_parcela').AsFloat :=
          Q_padraoVALOR.AsFloat / Q_padraoCOND_PGTO.Value;
          Q_contaapagar.FieldByName('dt_vencimento').Value := date + (parcela * 30);
          Q_contaapagar.FieldByName('atraso').AsFloat :=0;
          Q_contaapagar.FieldByName('juros').AsFloat :=0;
          Q_contaapagar.FieldByName('vl_juros').AsFloat :=0;
          Q_contaapagar.FieldByName('total_pagar').AsFloat :=
          Q_contaapagar.FieldByName('valor_parcela').AsFloat;
          Q_contaapagar.FieldByName('status').AsString := 'P';
          Q_contaapagar.Post;
          inc(parcela);
          Q_contaapagar.Next;
        end;

    end
    else
    if (Q_padraoID_FORMA_PGTO.Value = 2) or (Q_padraoID_FORMA_PGTO.Value = 4) then
      begin
        while parcela <= Q_padraoCOND_PGTO.AsInteger do
          begin
            Q_contaapagar.Insert;
            Q_contaapagarID_SEQUENCIA.AsInteger := parcela;
            Q_contaapagar.FieldByName('valor_parcela').AsFloat :=
            Q_padraoVALOR.AsFloat / Q_padraoCOND_PGTO.Value;
            Q_contaapagar.FieldByName('dt_vencimento').Value :=date;
            Q_contaapagar.FieldByName('dt_pagamento').Value :=date;
            Q_contaapagar.FieldByName('atraso').AsFloat :=0;
            Q_contaapagar.FieldByName('juros').AsFloat := 0;
            Q_contaapagar.FieldByName('vl_juros').AsFloat := 0;
            Q_contaapagar.FieldByName('total_pagar').AsFloat :=
            Q_contaapagar.FieldByName('valor_parcela').AsFloat;
            Q_contaapagar.FieldByName('status').AsString := 'F';
            Q_contaapagar.Post;
            inc(parcela);
          end;
    end
    else
    Q_contaapagar.First;
    while parcela <= Q_padraoCOND_PGTO.AsInteger do
      begin
        Q_contaapagar.Insert;
        Q_contaapagarID_SEQUENCIA.AsInteger := parcela;
        Q_contaapagar.FieldByName('valor_parcela').AsFloat :=
        Q_padraoVALOR.AsFloat / Q_padraoCOND_PGTO.Value;
        Q_contaapagar.FieldByName('dt_vencimento').Value := date + (parcela * 30);
        Q_contaapagar.FieldByName('atraso').AsFloat :=0;
        Q_contaapagar.FieldByName('juros').AsFloat :=0;
        Q_contaapagar.FieldByName('vl_juros').AsFloat :=0;
        Q_contaapagar.FieldByName('total_pagar').AsFloat :=
        Q_contaapagar.FieldByName('valor_parcela').AsFloat;
        Q_contaapagar.FieldByName('status').AsString := 'P';
        Q_contaapagar.Post;
        inc(parcela);
        Q_contaapagar.Next;
      end;

    //Cria processo pra tratar arredondamento parcelas
    soma := soma + Q_padraoCOND_PGTO.Value * Q_contaapagar.FieldByName('valor_parcela').AsFloat;
    if soma > Q_padraoVALOR.AsFloat then
      begin
        diferenca := soma - Q_padraoValor.AsFloat;
        Q_contaapagar.Edit;
        Q_contaapagar.FieldByName('valor_parcela').AsFloat :=
        Q_contaapagar.FieldByName('valor_parcela').AsFloat - diferenca;
        Q_contaapagar.Refresh;

      end;

     if (Q_padraoID_FORMA_PGTO.Value = 6)  then
      begin
        MessageDlg('Verifique as parcelas!', mtInformation, [mbOk], 0);
      end;


    if MessageDlg('Deseja finalizar compra?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
      begin
        Panel4.Visible := false;
        Panel1.Visible := false;
        Panel5.Visible := false;
        Panel6.Visible := false;
        bt_itens.Enabled := true;
        painel0.Visible := true;
        Panel3.Visible := true;
        Label6.Visible := true;
        db_subtotal.Visible := true;
        bt_save.Visible := true;
        bt_edit.Visible := true;
        bt_excluir.Visible := true;
        bt_itens.Visible := true;
        bt_atualizar.Visible := true;
        //frm_principal.Q_padraoitem.Refresh;
        label6.Visible := false;
        db_subtotal.Visible := false;
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
        MessageDlg('Produto exclu?do corretamente!', mtInformation, [mbOk], 0);
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
  db_aux7.Enabled := true;
  bt_save2.Enabled := true;
  painel0.Visible := false;
  Panel3.Visible := false;
end;

procedure Tfrm_compras.bt_excluirClick(Sender: TObject);
begin

  if MessageDlg('Deseja excluir essa compra?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin

     Q_contaapagar.First;
      while not Q_contaapagar.eof do
        begin
          Q_contaapagar.Delete;
          Q_contaapagar.Next;
        end;

      Q_padraoitem.First;
      while Q_padraoitem.RecordCount > 0 do
        begin
          if Q_produtos.Locate('ID_PRODUTO', Q_padraoitemID_PRODUTO.AsInteger, []) then
            begin
              Q_produtos.Edit;
              Q_produtos.FieldByName('ESTOQUE').AsFloat :=
              Q_produtos.FieldByName('ESTOQUE').AsFloat -
              Q_padraoitemQTDE.AsFloat;
              Q_produtos.Refresh;
              Q_padraoitem.Delete;
            end;
        end;
        Q_padrao.delete;
        Messagedlg('Compra exclu?da com sucesso!', mtInformation, [mbOk], 0);
        //frm_principal.Q_padraoitem.Refresh;
    end
    else
    abort;
end;

procedure Tfrm_compras.bt_itemClick(Sender: TObject);
  var proximo : integer;

begin
  //insere os itens na tabela de itens compras
  Q_padraoitem.Open;
  Q_padraoitem.Last; //ultimo registro
  proximo :=  Q_padraoitemID_SEQUENCIA.AsInteger + 1;  //prox recebe valor id_seq e acrecenta 1
  Q_padraoitem.Append; // abre linha tabela pra insers?o
  Q_padraoitemID_SEQUENCIA.AsInteger := proximo;  // id_seq recebe conteudo de proximo
  db_codprod.SetFocus;
end;

procedure Tfrm_compras.bt_itensClick(Sender: TObject);
begin
  Panel4.Visible := true;
  Panel1.Visible := true;
  Panel5.Visible := true;
  Panel3.Visible := false;
  painel0.Visible := false;
  Panel6.Visible := false;

end;

procedure Tfrm_compras.bt_newClick(Sender: TObject);
begin
  inherited;
  Q_padraoCADASTRO.AsDateTime := Date;
  Q_padraoUSUARIO.AsString := 'LUCCA ALMEIDA';
  Q_padraoVALOR.AsCurrency := 0;
  bt_edit.Enabled := false;
  bt_atualizar.Enabled := false;
  bt_excluir.Enabled := false;


end;

procedure Tfrm_compras.bt_pesquisarClick(Sender: TObject);
begin

  Q_padraoitem.Open();
  Panel1.Visible := true;
  Panel6.Visible := true;
  Panel4.Visible := true;
  Panel5.Visible := true;
  db_aux1.Enabled := true;
  db_aux2.Enabled := true;
  db_aux3.Enabled := true;
  db_aux4.Enabled := true;
  db_aux5.Enabled := true;
  db_aux6.Enabled := true;
  db_aux7.Enabled := true;
  bt_save2.Enabled := true;
  painel0.Visible := false;
  Panel3.Visible := false;

  frm_pesquisacompra := Tfrm_pesquisacompra.Create(self);
  Frm_pesquisacompra.ShowModal;
  try
    if frm_pesquisacompra.codigo > 0 then
        begin
          Q_padrao.Open();
          Q_padrao.Locate('ID_COMPRA',Frm_pesquisacompra.codigo,[]);
        end;

  finally
    frm_pesquisacompra.Free;
    frm_pesquisacompra := nil;
  end;

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
        //frm_principal.Q_padraoitem.Refresh;
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

procedure Tfrm_compras.cb_fornecedorClick(Sender: TObject);
begin
  inherited;
  bt_save.Visible := true;

end;

procedure Tfrm_compras.cb_idformapgtoClick(Sender: TObject);
begin
  if (cb_idformapgto.Text = 'Cr?dito') then
  begin
    db_condpgto.Enabled := true;
    db_condpgto.SetFocus;
  end
  else
  db_condpgto.Text := Inttostr(1);

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
    MessageDlg('Produto n?o localizado!', mtInformation, [mbOk], 0);
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

procedure Tfrm_compras.db_vl_itemChange(Sender: TObject);
begin
  inherited;
  bt_confirmar.Enabled := true;

end;

procedure Tfrm_compras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_principal.Panel2.Visible := false;
end;

end.
