unit U_movimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tfrm_movimento = class(TForm)
    StatusBar1: TStatusBar;
    principal: TPanel;
    painelitenscomprados: TPanel;
    Panel9: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    painelitensvendidos: TPanel;
    Panel12: TPanel;
    Label4: TLabel;
    DBText4: TDBText;
    DBText7: TDBText;
    Label7: TLabel;
    painelestoque: TPanel;
    DBGrid2: TDBGrid;
    Panel10: TPanel;
    Label3: TLabel;
    DBText3: TDBText;
    contasapagar: TPanel;
    Panel11: TPanel;
    Label5: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label6: TLabel;
    Q_padraoitem: TFDQuery;
    Q_padraoitemID_COMPRA: TIntegerField;
    Q_padraoitemCADASTRO: TDateField;
    Q_padraoitemID_PRODUTO: TIntegerField;
    Q_padraoitemPRODUTO_DESCRICAO: TStringField;
    Q_padraoitemQTDE: TFMTBCDField;
    Q_padraoitemVL_CUSTO: TFMTBCDField;
    Q_padraoitemDESCONTO: TFMTBCDField;
    Q_padraoitemTOTAL_ITEM: TFMTBCDField;
    Q_padraoitemVALORTOTAL: TAggregateField;
    Q_padraoitemQNTDTOTAL: TAggregateField;
    ds_padraoitem: TDataSource;
    Q_estoque: TFDQuery;
    Q_estoqueID_PRODUTO: TIntegerField;
    Q_estoquePRODUTO_DESCRICAO: TStringField;
    Q_estoqueVL_CUSTO: TFMTBCDField;
    Q_estoqueVL_VENDA: TFMTBCDField;
    Q_estoqueESTOQUE: TIntegerField;
    Q_estoqueCADASTRO: TDateField;
    Q_estoqueQTDTOTAL: TAggregateField;
    ds_estoque: TDataSource;
    Q_itensvendidos: TFDQuery;
    Q_itensvendidosID_VENDA: TIntegerField;
    Q_itensvendidosNOME: TStringField;
    Q_itensvendidosPRODUTO_DESCRICAO: TStringField;
    Q_itensvendidosCADASTRO: TDateField;
    Q_itensvendidosQTDE: TFMTBCDField;
    Q_itensvendidosVL_CUSTO: TFMTBCDField;
    Q_itensvendidosDESCONTO: TFMTBCDField;
    Q_itensvendidosTOTAL_ITEM: TFMTBCDField;
    Q_itensvendidosID_CLIENTE: TIntegerField;
    Q_itensvendidosID_PRODUTO: TIntegerField;
    Q_itensvendidosDESCRICAO: TStringField;
    Q_itensvendidosCOND_PGTO: TIntegerField;
    Q_itensvendidosVLRECEBIDO: TAggregateField;
    Q_itensvendidosQNTTOTAL: TAggregateField;
    ds_itensvendidos: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Q_contaapagar: TFDQuery;
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
    ds_contaapagar: TDataSource;
    DBGrid4: TDBGrid;
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
    ds_contasreceber: TDataSource;
    DBGrid5: TDBGrid;
    Q_contaapagarVALORDEVIDO: TAggregateField;
    Q_contasreceberVLRECEBER: TAggregateField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_movimento: Tfrm_movimento;

implementation

{$R *.dfm}

uses U_Principal;

procedure Tfrm_movimento.FormActivate(Sender: TObject);
begin

  //PAINEL ITENS OMPRADOS
  Q_padraoitem.Close; // fecha
  Q_padraoitem.SQL.Add(''); // limpa
  Q_padraoitem.Params.Clear;  //limpa os parametros
  Q_padraoitem.SQL.Clear;  // limpa o sql
  Q_padraoitem.SQL.Add(' SELECT A.ID_COMPRA, '
                        + 'C.CADASTRO, '
                        + 'A.ID_PRODUTO,'
                        + 'B.PRODUTO_DESCRICAO, '
                        + 'A.QTDE,'
                        + 'A.VL_CUSTO,'
                        + 'A.DESCONTO,'
                        + 'A.TOTAL_ITEM FROM ITEM_COMPRA A '
                        + 'INNER JOIN PRODUTO B  ON A.ID_PRODUTO = B.ID_PRODUTO '
                        + 'INNER JOIN COMPRA C ON A.ID_COMPRA = C.ID_COMPRA '
                        + 'WHERE EXTRACT(MONTH FROM C.CADASTRO) = '
                        + 'EXTRACT(MONTH FROM CAST (CURRENT_DATE AS DATE)) '
                        + 'AND EXTRACT(YEAR FROM C.CADASTRO) =  '
                        + 'EXTRACT(YEAR FROM CAST (CURRENT_DATE AS DATE)) ORDER BY C.CADASTRO');

  Q_padraoitem.Open;

  //PAINEL ESTOQUE
  Q_estoque.Close; // fecha
  Q_estoque.SQL.Add(''); // limpa
  Q_estoque.Params.Clear;  //limpa os parametros
  Q_estoque.SQL.Clear;  // limpa o sql
  Q_estoque.SQL.Add(' SELECT ID_PRODUTO, PRODUTO_DESCRICAO, ESTOQUE, '
                           + ' VL_CUSTO, VL_VENDA, CADASTRO FROM PRODUTO '
                          + 'WHERE (ESTOQUE > 0)  '
                          + 'ORDER BY  ESTOQUE DESC');

  Q_estoque.Open;

  //PAINEL ITENS VENDIDOS
  Q_itensvendidos.Close; // fecha
  Q_itensvendidos.SQL.Add(''); // limpa
  Q_itensvendidos.Params.Clear;  //limpa os parametros
  Q_itensvendidos.SQL.Clear;  // limpa o sql
  Q_itensvendidos.SQL.Add(' SELECT A.ID_VENDA, '
                            +'C.CADASTRO, '
                            +'C.ID_CLIENTE, '
                            +'D.NOME, '
                            +'A.ID_PRODUTO, '
                            +'B.PRODUTO_DESCRICAO, '
                            +'A.QTDE, '
                            +'A.VL_CUSTO, '
                            +'A.DESCONTO, '
                            +'E.DESCRICAO, '
                            +'C.COND_PGTO, '
                            +'A.TOTAL_ITEM '
                            +'FROM ITEM_VENDA A '
                            +'INNER JOIN PRODUTO B ON A.ID_PRODUTO = B.ID_PRODUTO '
                            +'INNER JOIN VENDA C ON A.ID_VENDA = C.ID_VENDA '
                            +'INNER JOIN CLIENTE D ON C.ID_CLIENTE = D.ID_CLIENTE '
                            +'INNER JOIN FORMA_PGTO E ON C.ID_FORMA_PGTO = E.ID_FORMA_PGTO '
                            +'WHERE EXTRACT(MONTH FROM C.CADASTRO) = '
                            +'EXTRACT(MONTH FROM CAST (CURRENT_DATE AS DATE)) '
                            +'AND EXTRACT(YEAR FROM C.CADASTRO) =  '
                            +'EXTRACT(YEAR FROM CAST (CURRENT_DATE AS DATE)) ORDER BY C.CADASTRO');
  Q_itensvendidos.Open;

  Q_contaapagar.Close; // fecha
  Q_contaapagar.SQL.Add(''); // limpa
  Q_contaapagar.Params.Clear;  //limpa os parametros
  Q_contaapagar.SQL.Clear;  // limpa o sql
  Q_contaapagar.SQL.Add('select id_sequencia, id_compra, valor_parcela, '
                         +'dt_vencimento, dt_pagamento, atraso, juros, vl_juros, total_pagar, status '
                         +'from contas_pagar where status = ' + QuotedStr('P')
                         +' and EXTRACT(MONTH FROM dt_vencimento) = '
                         +'EXTRACT(MONTH FROM CAST (CURRENT_DATE AS DATE)) '
                         +'AND EXTRACT(YEAR FROM dt_vencimento) =  '
                         +'EXTRACT(YEAR FROM CAST (CURRENT_DATE AS DATE)) ORDER BY dt_vencimento');
                         //fazer extract
  Q_contaapagar.Open;

  Q_contasreceber.Close; // fecha
  Q_contasreceber.SQL.Add(''); // limpa
  Q_contasreceber.Params.Clear;  //limpa os parametros
  Q_contasreceber.SQL.Clear;  // limpa o sql
  Q_contasreceber.SQL.Add('select id_sequencia, id_venda, valor_parcela, '
                         +'dt_vencimento, dt_pagamento, atraso, juros, vl_juros, total_pagar, status '
                         +'from contas_receber where status = ' + QuotedStr('P')
                         +' and EXTRACT(MONTH FROM dt_vencimento) = '
                         +'EXTRACT(MONTH FROM CAST (CURRENT_DATE AS DATE)) '
                         +'AND EXTRACT(YEAR FROM dt_vencimento) =  '
                         +'EXTRACT(YEAR FROM CAST (CURRENT_DATE AS DATE)) ORDER BY dt_vencimento');
                         //fazer extract
  Q_contasreceber.Open;

end;

procedure Tfrm_movimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_principal.Panel2.Visible := false;
end;

end.
