program ControleEstoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {frm_principal},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_Formpadrao in '..\Forms\U_Formpadrao.pas' {frm_padrao},
  U_usuario in '..\Forms\U_usuario.pas' {frm_usuario},
  U_clientes in '..\Forms\U_clientes.pas' {frm_clientes},
  U_fornecedor in '..\Forms\U_fornecedor.pas' {frm_fornecedor},
  U_produto in '..\Forms\U_produto.pas' {frm_produto},
  U_formaspgto in '..\Forms\U_formaspgto.pas' {frm_formapgto},
  U_formpesquisapadrao in '..\Forms\U_formpesquisapadrao.pas' {frm_pesquisapadrao},
  U_pesq_user in '..\Forms\U_pesq_user.pas' {frm_pesq_user},
  U_visualizauser in '..\Forms\U_visualizauser.pas' {frm_visualizausuario},
  U_pesq_client in '..\Forms\U_pesq_client.pas' {frm_pesq_client},
  U_pesq_forne in '..\Forms\U_pesq_forne.pas' {frm_pesq_forne},
  U_pesq_prod in '..\Forms\U_pesq_prod.pas' {frm_pesq_prod},
  U_movimentopadrao in '..\Forms\U_movimentopadrao.pas' {frm_padraomovimento},
  U_compras in '..\Forms\U_compras.pas' {frm_compras},
  U_pesq_compra in '..\Forms\U_pesq_compra.pas' {frm_pesquisacompra},
  U_vendas in '..\Forms\U_vendas.pas' {frm_vendas},
  U_pesq_venda in '..\Forms\U_pesq_venda.pas' {frm_pesquisavenda},
  U_movimento in '..\Forms\U_movimento.pas' {frm_movimento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_visualizausuario, frm_visualizausuario);
  Application.CreateForm(Tfrm_pesquisacompra, frm_pesquisacompra);
  Application.CreateForm(Tfrm_vendas, frm_vendas);
  Application.CreateForm(Tfrm_pesquisavenda, frm_pesquisavenda);
  Application.CreateForm(Tfrm_movimento, frm_movimento);
  Application.Run;
end.
