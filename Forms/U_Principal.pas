unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus;
type
  Tfrm_principal = class(TForm)
    Panel1: TPanel;
    bt_usuario: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
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
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure bt_usuarioClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    //Funcoes Exibe tela
    procedure ExibeTelaCadastroUsuario();
    procedure ExibeTelaCadastroCliente();
    procedure ExibeTelaCadastroFornecedor();
    procedure ExibeTelaCadastroProduto();
    procedure ExibeTelaCadastroPagamentos();
    procedure ExibeTeleaVisualizaUsuario();
    procedure ExibeTelaVisualizaCliente();
    procedure ExibeTelaVisualizaFornecedor();
    procedure ExibeTelaVisualizaProduto();


    //
    procedure Fornecedores1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Parceiros2Click(Sender: TObject);
    procedure Fornecedores2Click(Sender: TObject);

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
  U_pesq_client, U_pesq_forne, U_pesq_prod;

procedure Tfrm_principal.Compras1Click(Sender: TObject);
begin
  ExibeTelaCadastroCliente;
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
