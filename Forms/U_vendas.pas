unit U_vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_movimentopadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_vendas = class(Tfrm_padraomovimento)
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    BitBtn2: TBitBtn;
    bt_atualizar2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    bt_excluir2: TBitBtn;
    bt_edit2: TBitBtn;
    bt_save3: TBitBtn;
    bt_itens: TBitBtn;
    Panel5: TPanel;
    Panel6: TPanel;
    p1: TPanel;
    Q_padraoID_VENDA: TIntegerField;
    Q_padraoID_CLIENTE: TIntegerField;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoVALOR: TFMTBCDField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoCOND_PGTO: TIntegerField;
    Label12: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    db_condpgto2: TDBEdit;
    Label6: TLabel;
    Q_cliente: TFDQuery;
    ds_cliente: TDataSource;
    Q_formapgto: TFDQuery;
    Q_formapgtoID_FORMA_PGTO: TIntegerField;
    Q_formapgtoDESCRICAO: TStringField;
    ds_formapgto: TDataSource;
    Q_clienteID_CLIENTE: TIntegerField;
    Q_clienteNOME: TStringField;
    Q_padraoCLIENTE: TStringField;
    Q_padraoDESCRICAO: TStringField;
    db_aux1: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    db_aux2: TDBEdit;
    Label10: TLabel;
    db_aux3: TDBEdit;
    Label11: TLabel;
    db_aux4: TDBLookupComboBox;
    db_aux5: TDBEdit;
    Label13: TLabel;
    db_aux6: TDBLookupComboBox;
    Label14: TLabel;
    db_aux7: TDBEdit;
    Label15: TLabel;
    Panel8: TPanel;
    DBNavigator2: TDBNavigator;
    bt_confirmar2: TBitBtn;
    bt_item2: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Label19: TLabel;
    Q_padraoitemID_SEQUENCIA: TIntegerField;
    Q_padraoitemID_VENDA: TIntegerField;
    Q_padraoitemID_PRODUTO: TIntegerField;
    Q_padraoitemQTDE: TFMTBCDField;
    Q_padraoitemVL_CUSTO: TFMTBCDField;
    Q_padraoitemDESCONTO: TFMTBCDField;
    Q_padraoitemTOTAL_ITEM: TFMTBCDField;
    Label16: TLabel;
    db_codprod: TDBEdit;
    Label17: TLabel;
    db_qtde: TDBEdit;
    Label18: TLabel;
    db_vl_custo: TDBEdit;
    Label20: TLabel;
    db_desconto: TDBEdit;
    Label21: TLabel;
    db_totalitem: TDBEdit;
    Panel7: TPanel;
    DBNavigator3: TDBNavigator;
    bt_save2: TBitBtn;
    BitBtn3: TBitBtn;
    cb_idformapgto2: TDBLookupComboBox;
    cb_idcliente: TDBLookupComboBox;
    Q_produtos: TFDQuery;
    Q_padraoitemSUBTOTAL: TAggregateField;
    Q_produtosID_PRODUTO: TIntegerField;
    Q_produtosPRODUTO_DESCRICAO: TStringField;
    Q_produtosESTOQUE: TIntegerField;
    Q_produtosESTOQUE_MIN: TFMTBCDField;
    Q_produtosVL_CUSTO: TFMTBCDField;
    Q_padraoitemDESCRICAO: TStringField;
    DBEdit4: TDBEdit;
    ds_contasreceber: TDataSource;
    Q_contasreceber: TFDQuery;
    Q_contasreceberID_SEQUENCIA: TIntegerField;
    Q_contasreceberID_VENDA: TIntegerField;
    Q_contasreceberVALOR_PARCELA: TFMTBCDField;
    Q_contasreceberDT_VENCIMENTO: TDateField;
    Q_contasreceberDT_PAGAMENTO: TDateField;
    Q_contasreceberATRASO: TIntegerField;
    Q_contasreceberJUROS: TFMTBCDField;
    Q_contasreceberVL_JUROS: TFMTBCDField;
    Q_contasreceberTOTAL_PAGAR: TFMTBCDField;
    Q_contasreceberSTATUS: TStringField;
    procedure bt_newClick(Sender: TObject);
    procedure cb_idclienteClick(Sender: TObject);
    procedure cb_idformapgto2Click(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure bt_item2Click(Sender: TObject);
    procedure bt_confirmar2Click(Sender: TObject);
    procedure db_totalitemChange(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure db_codprodExit(Sender: TObject);
    procedure bt_itensClick(Sender: TObject);
    procedure bt_edit2Click(Sender: TObject);
    procedure bt_excluirClick(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
    procedure db_descontoExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_vendas: Tfrm_vendas;

implementation

{$R *.dfm}

uses U_DM, U_pesq_venda, U_Principal;

procedure Tfrm_vendas.bt_item2Click(Sender: TObject);
var proximo : integer;
begin
  //insere os itens na tabela de itens vendas
  Q_padraoitem.Open;
  Q_produtos.Open;
  Q_padraoitem.Last; //ultimo registro
  proximo :=  Q_padraoitemID_SEQUENCIA.AsInteger + 1;  //prox recebe valor id_seq e acrecenta 1
  Q_padraoitem.Append; // abre linha tabela pra insers?o
  Q_padraoitemID_SEQUENCIA.AsInteger := proximo;  // id_seq recebe conteudo de proximo
  db_codprod.SetFocus;

end;

procedure Tfrm_vendas.bt_itensClick(Sender: TObject);
begin
  p1.Visible := true;
  Panel5.Visible := true;
  Panel8.Visible := true;
  Panel3.Visible := false;
  Panel4.Visible := false;

end;

procedure Tfrm_vendas.BitBtn11Click(Sender: TObject);
begin
    //exclui item detalhe
if MessageDlg('Deseja excluir esse item da compra?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
  begin
    if Q_produtos.Locate('ID_PRODUTO', Q_padraoitemID_PRODUTO.AsInteger, []) then
      begin
        Q_produtos.Edit;
        Q_produtos.FieldByName('ESTOQUE').AsFloat :=
        Q_produtos.FieldByName('ESTOQUE').AsFloat +
        Q_padraoitemQTDE.AsFloat;
        Q_produtos.Refresh;
        Q_padraoitem.Delete;
        MessageDlg('Produto exclu?do corretamente!', mtInformation, [mbOk], 0);
      end;
  end
  else
  abort;

end;

procedure Tfrm_vendas.BitBtn2Click(Sender: TObject);
begin
  Q_padraoitem.Open();
  p1.Visible := true;
  Panel7.Visible := true;
  Panel5.Visible := true;
  Panel8.Visible := true;
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

  frm_pesquisavenda := Tfrm_pesquisavenda.Create(self);
  Frm_pesquisavenda.ShowModal;
  try
    if frm_pesquisavenda.codigo > 0 then
        begin
          Q_padrao.Open();
          Q_padrao.Locate('ID_VENDA',Frm_pesquisavenda.codigo,[]);
        end;

  finally
    frm_pesquisavenda.Free;
    frm_pesquisavenda := nil;
  end;

end;

procedure Tfrm_vendas.bt_confirmar2Click(Sender: TObject);

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
          Q_produtos.FieldByName('ESTOQUE').AsFloat -
          Q_padraoitemQTDE.AsFloat;
          Q_padraoitem.Next;
        end;

    end;

    Q_produtos.Refresh;

     //Insere parcela
    parcela := 1;

    Q_contasreceber.Open;

    if  Q_contasreceber.Locate('ID_VENDA', db_aux1.Text,[]) then
      begin

      if (Q_padraoID_FORMA_PGTO.Value = 2) or (Q_padraoID_FORMA_PGTO.Value = 4) then
      begin

       Q_contasreceber.First;
       while parcela <= Q_padraoCOND_PGTO.AsInteger do
        begin
          Q_contasreceber.Delete;
          Q_contasreceber.Next;
        end;

     end
     else

     Q_contasreceber.First;
     while parcela <= Q_padraoCOND_PGTO.AsInteger do
        begin
          Q_contasreceber.Delete;
          Q_contasreceber.Next;
       end;

     Q_contasreceber.Open;

     Q_contasreceber.First;
     while parcela <= Q_padraoCOND_PGTO.AsInteger do
        begin
          Q_contasreceber.Insert;
          Q_contasreceberID_SEQUENCIA.AsInteger := parcela;
          Q_contasreceber.FieldByName('valor_parcela').AsFloat :=
          Q_padraoVALOR.AsFloat / Q_padraoCOND_PGTO.Value;
          Q_contasreceber.FieldByName('dt_vencimento').Value := date + (parcela * 30);
          Q_contasreceber.FieldByName('atraso').AsFloat :=0;
          Q_contasreceber.FieldByName('juros').AsFloat :=0;
          Q_contasreceber.FieldByName('vl_juros').AsFloat :=0;
          Q_contasreceber.FieldByName('total_pagar').AsFloat :=
          Q_contasreceber.FieldByName('valor_parcela').AsFloat;
          Q_contasreceber.FieldByName('status').AsString := 'P';
          Q_contasreceber.Post;
          inc(parcela);
          Q_contasreceber.Next;
        end;

    end
    else
    if (Q_padraoID_FORMA_PGTO.Value = 2) or (Q_padraoID_FORMA_PGTO.Value = 4) then
      begin
        while parcela <= Q_padraoCOND_PGTO.AsInteger do
          begin
            Q_contasreceber.Insert;
            Q_contasreceberID_SEQUENCIA.AsInteger := parcela;
            Q_contasreceber.FieldByName('valor_parcela').AsFloat :=
            Q_padraoVALOR.AsFloat / Q_padraoCOND_PGTO.Value;
            Q_contasreceber.FieldByName('dt_vencimento').Value :=date;
            Q_contasreceber.FieldByName('dt_pagamento').Value :=date;
            Q_contasreceber.FieldByName('atraso').AsFloat :=0;
            Q_contasreceber.FieldByName('juros').AsFloat := 0;
            Q_contasreceber.FieldByName('vl_juros').AsFloat := 0;
            Q_contasreceber.FieldByName('total_pagar').AsFloat :=
            Q_contasreceber.FieldByName('valor_parcela').AsFloat;
            Q_contasreceber.FieldByName('status').AsString := 'F';
            Q_contasreceber.Post;
            inc(parcela);
          end;
    end
    else
    Q_contasreceber.First;
    while parcela <= Q_padraoCOND_PGTO.AsInteger do
      begin
        Q_contasreceber.Insert;
        Q_contasreceberID_SEQUENCIA.AsInteger := parcela;
        Q_contasreceber.FieldByName('valor_parcela').AsFloat :=
        Q_padraoVALOR.AsFloat / Q_padraoCOND_PGTO.Value;
        Q_contasreceber.FieldByName('dt_vencimento').Value := date + (parcela * 30);
        Q_contasreceber.FieldByName('atraso').AsFloat :=0;
        Q_contasreceber.FieldByName('juros').AsFloat :=0;
        Q_contasreceber.FieldByName('vl_juros').AsFloat :=0;
        Q_contasreceber.FieldByName('total_pagar').AsFloat :=
        Q_contasreceber.FieldByName('valor_parcela').AsFloat;
        Q_contasreceber.FieldByName('status').AsString := 'P';
        Q_contasreceber.Post;
        inc(parcela);
        Q_contasreceber.Next;
      end;

    //Cria processo pra tratar arredondamento parcelas
    soma := soma + Q_padraoCOND_PGTO.Value * Q_contasreceber.FieldByName('valor_parcela').AsFloat;
    if soma > Q_padraoVALOR.AsFloat then
      begin
        diferenca := soma - Q_padraoValor.AsFloat;
        Q_contasreceber.Edit;
        Q_contasreceber.FieldByName('valor_parcela').AsFloat :=
        Q_contasreceber.FieldByName('valor_parcela').AsFloat - diferenca;
        Q_contasreceber.Refresh;

      end;

     if (Q_padraoID_FORMA_PGTO.Value = 6)  then
      begin
        MessageDlg('Verifique as parcelas!', mtInformation, [mbOk], 0);
      end;


    if MessageDlg('Deseja finalizar a venda?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
      begin
        Panel4.Visible := false;
        Panel1.Visible := false;
        Panel5.Visible := false;
        Panel6.Visible := false;
        Panel7.Visible := false;
        p1.Visible := false;
        bt_itens.Enabled := true;
        painel0.Visible := true;
        Panel3.Visible := true;
        Label6.Visible := true;
        Panel4.Visible := true;
        bt_save3.Enabled := false;
        bt_edit2.Visible := true;
        bt_edit2.Enabled := true;
        bt_excluir2.Visible := true;
        bt_excluir2.Enabled := true;
        bt_itens.Visible := true;
        bt_atualizar2.Visible := true;
        bt_atualizar2.Enabled := true;

        //frm_principal.Q_padraoitem.Refresh;


      end
      else
      abort;

end;

procedure Tfrm_vendas.bt_edit2Click(Sender: TObject);
begin
  inherited;
  p1.Visible := true;
  db_aux1.Enabled := true;
  db_aux2.Enabled := true;
  db_aux3.Enabled := true;
  db_aux4.Enabled := true;
  db_aux5.Enabled := true;
  db_aux6.Enabled := true;
  db_aux7.Enabled := false;
  bt_save2.Enabled := true;
  Panel5.Visible := true;
  Panel8.Visible := true;
  Panel4.Visible := false;
  Panel3.Visible := false;
  Panel7.Visible := true;

end;

procedure Tfrm_vendas.bt_excluirClick(Sender: TObject);
begin
   if MessageDlg('Deseja excluir essa Venda?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin

      Q_contasreceber.First;
      while not Q_contasreceber.eof do
        begin
          Q_contasreceber.Delete;
          Q_contasreceber.Next;
        end;

      Q_padraoitem.First;
      while Q_padraoitem.RecordCount > 0 do
        begin
          if Q_produtos.Locate('ID_PRODUTO', Q_padraoitemID_PRODUTO.AsInteger, []) then
            begin
              Q_produtos.Edit;
              Q_produtos.FieldByName('ESTOQUE').AsFloat :=
              Q_produtos.FieldByName('ESTOQUE').AsFloat +
              Q_padraoitemQTDE.AsFloat;
              Q_produtos.Refresh;
              Q_padraoitem.Delete;
            end;
        end;
        Q_padrao.delete;
        Messagedlg('Venda exclu?da com sucesso!', mtInformation, [mbOk], 0);
        //frm_principal.Q_padraoitem.Refresh;
    end
    else
    abort;

end;

procedure Tfrm_vendas.bt_newClick(Sender: TObject);
begin
  inherited;
  Q_cliente.Open;
  Q_formapgto.Open;
  Q_produtos.Open;
  Q_padraoCADASTRO.AsDateTime := Date;
  Q_padraoUSUARIO.AsString := 'LUCCA ALMEIDA';
  Q_padraoVALOR.AsCurrency := 0;
  bt_edit2.Enabled := false;
  bt_atualizar2.Enabled := false;
  bt_excluir2.Enabled := false;

end;

procedure Tfrm_vendas.bt_save2Click(Sender: TObject);
begin
  inherited;
  inherited;
  Messagedlg('Editado com Sucesso!', mtInformation, [mbOk], 0);

  if MessageDlg('Deseja continuar editando?', mtConfirmation, [mbOk, mbNo], 0) = mrNo then
      begin
        p1.Visible := false;;
        Panel3.Visible := true;
        Panel4.Visible := true;
        Panel5.Visible := false;
        Panel8.Visible := false;
        Panel7.Visible := false;
        bt_itens.Enabled := true;

        //frm_principal.Q_padraoitem.Refresh;
      end
      else
      abort;

end;

procedure Tfrm_vendas.bt_saveClick(Sender: TObject);
begin
  inherited;
  Messagedlg('Venda iniciada!', mtInformation, [mbOk], 0);
  p1.Visible := true;
  Panel5.Visible := true;
  Panel3.Visible := false;
  Panel8.Visible := true;

end;

procedure Tfrm_vendas.cb_idclienteClick(Sender: TObject);
begin
  bt_save3.Visible := true;
  bt_save3.Enabled := true;
end;

procedure Tfrm_vendas.cb_idformapgto2Click(Sender: TObject);
begin
  if (cb_idformapgto2.Text = 'Cr?dito') then
  begin
    db_condpgto2.Enabled := true;
    db_condpgto2.SetFocus;
  end
  else
  db_condpgto2.Text := Inttostr(1);



end;

procedure Tfrm_vendas.db_codprodExit(Sender: TObject);
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
      bt_item2.SetFocus;
    end
    else
    MessageDlg('Produto n?o localizado!', mtInformation, [mbOk], 0);
    Q_padraoitem.Cancel;
    bt_item2.SetFocus;

end;

procedure Tfrm_vendas.db_descontoExit(Sender: TObject);
begin
  inherited;
  Q_padraoitemTOTAL_ITEM.AsFloat := (Q_padraoitemQTDE.AsFloat *
  Q_padraoitemVL_CUSTO.AsFloat) - (Q_padraoitemDESCONTO.AsFloat);
  Q_padraoitem.Refresh;
end;

procedure Tfrm_vendas.db_totalitemChange(Sender: TObject);
begin
  inherited;
  bt_confirmar2.Enabled := true;

end;

procedure Tfrm_vendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Q_cliente.Close;
  Q_formapgto.Close;
  Q_produtos.Close;
  frm_principal.Panel2.Visible := false;
end;

end.
