unit U_pesq_user;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_formpesquisapadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  Tfrm_pesq_user = class(Tfrm_pesquisapadrao)
    q_pesq_padraoID_USUARIO: TIntegerField;
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoTIPO: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    bt_cadastrar: TBitBtn;
    bt_atualizar: TBitBtn;
    procedure bt_buscarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt_cadastrarClick(Sender: TObject);
    procedure ExibeTelaCadastroUsuario();
    procedure bt_atualizarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pesq_user: Tfrm_pesq_user;

implementation

{$R *.dfm}

uses U_usuario;

procedure Tfrm_pesq_user.bt_atualizarClick(Sender: TObject);
begin
  Q_pesq_padrao.Refresh;
  Messagedlg('Registros atualizados!', mtInformation, [mbOk], 0);
end;

procedure Tfrm_pesq_user.bt_buscarClick(Sender: TObject);
begin

  Q_pesq_padrao.Close; // fecha
  Q_pesq_padrao.SQL.Add(''); // limpa
  Q_pesq_padrao.Params.Clear;  //limpa os parametros
  Q_pesq_padrao.SQL.Clear;  // limpa o sql
  Q_pesq_padrao.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO FROM USUARIO'); // add sql

  case cb_chave_pesquisa.ItemIndex of

    0:begin
      Q_pesq_padrao.SQL.Add('WHERE A.ID_USUARIO =:PID_USUARIO ');
      Q_pesq_padrao.ParamByName('PID_USUARIO').AsString := ed_nome.Text;
    end;

    1:begin
      Q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME ');
      Q_pesq_padrao.ParamByName('PNOME').AsString := '%' + ed_nome.Text + '%';
    end;

    2:begin
      Q_pesq_padrao.SQL.Add('WHERE CADASTRO =:PCADASTRO ');
      Q_pesq_padrao.ParamByName('PCADASTRO').AsDate := strTodate(mk_inicio.Text);
    end;

    3:begin
      Q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICiO').AsDate := strTodate(mk_inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM').AsDate := strTodate(mk_fim.Text);
    end;

    4:begin
       Q_pesq_padrao.SQL.Add('ORDER BY ID_USUARIO');
    end;


  end;

  //Q_pesq_padrao.SQL.Add('WHERE ID_USUARIO=:PID_USUARIO');
  //Q_pesq_padrao.ParamByName('PID_USUARIO').AsString := ed_nome.Text;
  Q_pesq_padrao.Open;

  if Q_pesq_padrao.IsEmpty then
    begin
      Messagedlg('Nenhum Registro Encontrado!', MtInformation, [mbOk], 0);
    end
    else
    abort

end;

procedure Tfrm_pesq_user.bt_cadastrarClick(Sender: TObject);
begin
  ExibeTelaCadastroUsuario;
  //frm_pesq_user.Close;

end;

procedure Tfrm_pesq_user.ExibeTelaCadastroUsuario;
begin
  frm_usuario := Tfrm_usuario.Create(self);
  Frm_Usuario.ShowModal;
  try

  finally
    frm_usuario.Free;
    frm_usuario := nil;
  end;
end;

procedure Tfrm_pesq_user.FormActivate(Sender: TObject);
begin
  Q_pesq_padrao.Close; // fecha
  Q_pesq_padrao.SQL.Add(''); // limpa
  Q_pesq_padrao.Params.Clear;  //limpa os parametros
  Q_pesq_padrao.SQL.Clear;  // limpa o sql
  Q_pesq_padrao.SQL.Add('SELECT * FROM USUARIO ORDER BY ID_USUARIO'); // add sql
  Q_pesq_padrao.Open;

end;

end.
