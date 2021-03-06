unit U_Principal;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.Imaging.pngimage;
type
  Tfrm_principal = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Compras1: TMenuItem;
    Fornecedores1: TMenuItem;
    Fornecedores2: TMenuItem;
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
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Image2: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
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
    procedure ExibeTelaCadastroVendas();
    procedure ExibeTelaMovimento();
    procedure Fornecedores1Click(Sender: TObject);
    procedure Fornecedores2Click(Sender: TObject);
    procedure Compras3Click(Sender: TObject);
    procedure db_cdprodClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Parceiros2Click(Sender: TObject);
    procedure Vendas2Click(Sender: TObject);
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
  U_pesq_client, U_pesq_forne, U_pesq_prod, U_compras, U_movimento,
  U_pesq_compra, U_pesq_venda, U_vendas;
procedure Tfrm_principal.Compras1Click(Sender: TObject);
begin
  Panel2.Visible := true;
  ExibeTelaCadastroCliente;
end;
procedure Tfrm_principal.Compras3Click(Sender: TObject);
begin
  Panel2.Visible := true;
  ExibeTelaCadastroCompras;
end;
procedure Tfrm_principal.db_cdprodClick(Sender: TObject);
begin
  Panel2.Visible := true;
  ExibeTelaCadastroProduto;
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
procedure Tfrm_principal.ExibeTelaCadastroVendas;
begin
   frm_vendas := Tfrm_vendas.Create(self);
   Frm_vendas.ShowModal;
    try
    finally
      frm_vendas.Free;
      frm_vendas := nil;
    end;
end;

procedure Tfrm_principal.ExibeTelaMovimento;
begin
    frm_movimento := Tfrm_movimento.Create(self);
    Frm_movimento.ShowModal;
    try
    finally
      frm_movimento.Free;
      frm_movimento := nil;
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
procedure Tfrm_principal.Fornecedores1Click(Sender: TObject);
begin
  Panel2.Visible := true;
  ExibeTelaCadastroFornecedor;
end;
procedure Tfrm_principal.Fornecedores2Click(Sender: TObject);
begin
   ExibeTelaCadastroPagamentos;
   Panel2.Visible := true;
end;
procedure Tfrm_principal.Label1Click(Sender: TObject);
begin
    ExibeTelaCadastroCliente;
end;


procedure Tfrm_principal.Label2Click(Sender: TObject);
begin
   Panel2.Visible := true;
   ExibeTelaCadastroProduto;
end;

procedure Tfrm_principal.Label3Click(Sender: TObject);
begin
   Panel2.Visible := true;
   ExibeTelaCadastroCompras;
end;

procedure Tfrm_principal.Label4Click(Sender: TObject);
begin
  Panel2.Visible := true;
  ExibeTelaCadastroVendas;
end;

procedure Tfrm_principal.Label5Click(Sender: TObject);
begin
  Panel2.Visible := true;
  ExibeTelaMovimento;
end;

Procedure Tfrm_principal.Label6Click(Sender: TObject);
begin
    Panel2.Visible := true;
    ExibeTelaCadastroFornecedor;
end;

procedure Tfrm_principal.Parceiros2Click(Sender: TObject);
begin
      Panel2.Visible := true;
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

procedure Tfrm_principal.Timer1Timer(Sender: TObject);
begin
  //  Insere dados no statusbar
  Statusbar1.Panels[0].Text:=DateTostr(now);
  Statusbar1.Panels[1].Text:=TimeTostr(now);
  Statusbar1.Panels[2].Text:='Utilize com sabedoria!';
end;
procedure Tfrm_principal.Usurios1Click(Sender: TObject);
begin
   Panel2.Visible := true;
   ExibeTelaCadastroUsuario;
end;
procedure Tfrm_principal.Vendas2Click(Sender: TObject);
begin
  Panel2.Visible := true;
  ExibeTelaCadastroVendas;
end;

end.
