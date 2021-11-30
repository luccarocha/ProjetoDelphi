unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;
type
  Tfrm_principal = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Compras1: TMenuItem;
    Fornecedores1: TMenuItem;
    Fornecedores2: TMenuItem;
    Parceiros1: TMenuItem;
    Parceiros2: TMenuItem;
    Usurios1: TMenuItem;
    Movimentos1: TMenuItem;
    Compras3: TMenuItem;
    Vendas2: TMenuItem;
    Rltorios1: TMenuItem;
    Clientes1: TMenuItem;
    Compras2: TMenuItem;
    Compras4: TMenuItem;
    Parcerias1: TMenuItem;
    Parcerias2: TMenuItem;
    Produtos1: TMenuItem;
    Usurios2: TMenuItem;
    Vendas1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    rocarUsurio1: TMenuItem;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Q_padraoitem: TFDQuery;
    ds_padraoitem: TDataSource;
    DBGrid1: TDBGrid;
    Q_padraoitemID_COMPRA: TIntegerField;
    Q_padraoitemCADASTRO: TDateField;
    Q_padraoitemID_PRODUTO: TIntegerField;
    Q_padraoitemPRODUTO_DESCRICAO: TStringField;
    Q_padraoitemQTDE: TFMTBCDField;
    Q_padraoitemVL_CUSTO: TFMTBCDField;
    Q_padraoitemDESCONTO: TFMTBCDField;
    Q_padraoitemTOTAL_ITEM: TFMTBCDField;
    Panel9: TPanel;
    Q_padraoitemVALORTOTAL: TAggregateField;
    Q_padraoitemQNTDTOTAL: TAggregateField;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Q_estoque: TFDQuery;
    ds_estoque: TDataSource;
    DBGrid2: TDBGrid;
    Panel10: TPanel;
    Label3: TLabel;
    Panel11: TPanel;
    Label5: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label6: TLabel;
    DBText3: TDBText;
    Q_estoqueID_PRODUTO: TIntegerField;
    Q_estoquePRODUTO_DESCRICAO: TStringField;
    Q_estoqueVL_CUSTO: TFMTBCDField;
    Q_estoqueVL_VENDA: TFMTBCDField;
    Q_estoqueQTDTOTAL: TAggregateField;
    Panel12: TPanel;
    Label4: TLabel;
    DBText4: TDBText;
    DBText7: TDBText;
    Label7: TLabel;
    Q_estoqueESTOQUE: TIntegerField;
    Q_estoqueCADASTRO: TDateField;

    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure bt_usuarioClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);

    procedure ExibeTelaCadastroUsuario();
    procedure ExibeTelaCadastroCliente();
    procedure ExibeTelaCadastroFornecedor();
    procedure ExibeTelaCadastroProduto();
    procedure ExibeTelaCadastroPagamentos();
    procedure ExibeTeleaVisualizaUsuario();
    procedure ExibeTelaVisualizaCliente();
    procedure ExibeTelaVisualizaFornecedor();
    procedure ExibeTelaVisualizaProduto();
    procedure ExibeTelaCadastroCompras();

    procedure Fornecedores1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Parceiros2Click(Sender: TObject);
    procedure Fornecedores2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Compras3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

   private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses U_usuario, U_clientes, U_fornecedor, U_produto, U_formaspgto, U_pesq_user,
  U_pesq_client, U_pesq_forne, U_pesq_prod, U_compras;

procedure Tfrm_principal.Compras1Click(Sender: TObject);
begin
  ExibeTelaCadastroCliente;
end;

procedure Tfrm_principal.Compras3Click(Sender: TObject);
begin
  ExibeTelaCadastroCompras;
end;

procedure Tfrm_principal.ExibeTelaCadastroFornecedor;
begin
  frm_fornecedor := Tfrm_fornecedor.Create(self);
  Frm_fornecedor.ShowModal;
  try

  finally
    frm_fornecedor.Free;
    frm_fornecedor := nil;
  end;
end;

procedure Tfrm_principal.ExibeTelaCadastroPagamentos;
begin
  frm_formapgto := Tfrm_formapgto.Create(self);
  Frm_formapgto.ShowModal;
  try

  finally
    frm_clientes.Free;
    frm_clientes := nil;
  end;
end;

procedure Tfrm_principal.ExibeTelaCadastroProduto;
begin
  frm_produto := Tfrm_produto.Create(self);
  Frm_produto.ShowModal;
  try

  finally
    frm_clientes.Free;
    frm_clientes := nil;
  end;

end;

procedure Tfrm_principal.ExibeTelaCadastroCliente;
begin
  frm_clientes := Tfrm_clientes.Create(self);
  Frm_Clientes.ShowModal;
  try

  finally
    frm_clientes.Free;
    frm_clientes := nil;
  end;
end;

procedure Tfrm_principal.ExibeTelaCadastroCompras;
begin

  frm_compras := Tfrm_compras.Create(self);
  Frm_compras.ShowModal;
  try

  finally
    frm_compras.Free;
    frm_compras := nil;
  end;

end;

procedure Tfrm_principal.ExibeTelaCadastroUsuario;
begin
  frm_usuario := Tfrm_usuario.Create(self);
  Frm_Usuario.ShowModal;
  try

  finally
    frm_usuario.Free;
    frm_usuario := nil;
  end;
end;

procedure Tfrm_principal.ExibeTelaVisualizaCliente;
begin
  begin
    frm_pesq_client := Tfrm_pesq_client.Create(self);
    Frm_pesq_client.ShowModal;

    try

    finally
      frm_pesq_client.Free;
      frm_pesq_client := nil;
    end;
  end;
end;

procedure Tfrm_principal.ExibeTelaVisualizaFornecedor;
begin
  frm_pesq_forne := Tfrm_pesq_forne.Create(self);
  Frm_pesq_forne.ShowModal;

  try

  finally
    frm_pesq_forne.Free;
    frm_pesq_forne := nil;
  end;
end;

procedure Tfrm_principal.ExibeTelaVisualizaProduto;
begin

    frm_pesq_prod := Tfrm_pesq_prod.Create(self);
    Frm_pesq_prod.ShowModal;

    try

    finally
      frm_pesq_prod.Free;
      frm_pesq_prod := nil;
    end;

end;

procedure Tfrm_principal.ExibeTeleaVisualizaUsuario;

  begin
    frm_pesq_user := Tfrm_pesq_user.Create(self);
    Frm_pesq_user.ShowModal;

    try

    finally
      frm_pesq_user.Free;
      frm_pesq_user := nil;
    end;

end;

procedure Tfrm_principal.FormActivate(Sender: TObject);
begin
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


  Q_estoque.Close; // fecha
  Q_estoque.SQL.Add(''); // limpa
  Q_estoque.Params.Clear;  //limpa os parametros
  Q_estoque.SQL.Clear;  // limpa o sql
  Q_estoque.SQL.Add(' SELECT ID_PRODUTO, PRODUTO_DESCRICAO, ESTOQUE, '
                           + ' VL_CUSTO, VL_VENDA, CADASTRO FROM PRODUTO '
                          + 'WHERE (ESTOQUE > 0)  '
                          + 'ORDER BY  ESTOQUE DESC');

  Q_estoque.Open;

end;

procedure Tfrm_principal.Fornecedores1Click(Sender: TObject);
begin
  ExibeTelaCadastroFornecedor;
end;

procedure Tfrm_principal.Fornecedores2Click(Sender: TObject);
begin
   ExibeTelaCadastroPagamentos;
end;

procedure Tfrm_principal.Parceiros2Click(Sender: TObject);
begin
  ExibeTelaCadastroProduto;
end;

procedure Tfrm_principal.SpeedButton10Click(Sender: TObject);
begin
  if messagedlg('Deseja mesmoa sair do sistema?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      application.Terminate;
    end
    else
    abort;
end;

procedure Tfrm_principal.SpeedButton2Click(Sender: TObject);
begin
   ExibeTelaVisualizaFornecedor;
end;

procedure Tfrm_principal.SpeedButton3Click(Sender: TObject);
begin
  ExibeTelaVisualizaCliente;
end;

procedure Tfrm_principal.SpeedButton5Click(Sender: TObject);
begin
   ExibeTelaVisualizaProduto;
end;

procedure Tfrm_principal.SpeedButton7Click(Sender: TObject);
begin
  ExibeTelaCadastroCompras;
end;

procedure Tfrm_principal.bt_usuarioClick(Sender: TObject);
begin
  ExibeTeleaVisualizaUsuario;

end;

procedure Tfrm_principal.Timer1Timer(Sender: TObject);
begin

  //  Insere dados no statusbar
  Statusbar1.Panels[0].Text:=DateTostr(now);
  Statusbar1.Panels[1].Text:=TimeTostr(now);
  Statusbar1.Panels[2].Text:='Utilize com sabedoria!';

end;

procedure Tfrm_principal.Usurios1Click(Sender: TObject);
begin
   ExibeTelaCadastroUsuario;
end;

end.
