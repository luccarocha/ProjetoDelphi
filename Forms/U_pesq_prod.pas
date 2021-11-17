unit U_pesq_prod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_formpesquisapadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  Tfrm_pesq_prod = class(Tfrm_pesquisapadrao)
    bt_atualizar: TBitBtn;
    bt_cadastrar: TBitBtn;
    q_pesq_padraoID_PRODUTO: TIntegerField;
    q_pesq_padraoPRODUTO_DESCRICAO: TStringField;
    q_pesq_padraoVL_CUSTO: TFMTBCDField;
    q_pesq_padraoVL_VENDA: TFMTBCDField;
    q_pesq_padraoESTOQUE: TFMTBCDField;
    q_pesq_padraoESTOQUE_MIN: TFMTBCDField;
    q_pesq_padraoCADASTRO: TDateField;
    q_pesq_padraoNOME: TStringField;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt_buscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pesq_prod: Tfrm_pesq_prod;

implementation

{$R *.dfm}

procedure Tfrm_pesq_prod.bt_buscarClick(Sender: TObject);
begin
  Q_pesq_padrao.Close; // fecha
  Q_pesq_padrao.SQL.Add(''); // limpa
  Q_pesq_padrao.Params.Clear;  //limpa os parametros
  Q_pesq_padrao.SQL.Clear;  // limpa o sql
  Q_pesq_padrao.SQL.Add('SELECT A.ID_PRODUTO, '
                        + 'A.PRODUTO_DESCRICAO, '
                        + 'A.VL_CUSTO, '
                        + 'A.VL_VENDA, '
                        + 'A.ESTOQUE, '
                        + 'A.ESTOQUE_MIN, '
                        + 'A.CADASTRO, '
                        + 'A.ID_FORNECEDOR, '
                        + 'B.NOME FROM PRODUTO A '
                        + 'INNER JOIN FORNECEDOR B '
                        + 'ON A.ID_FORNECEDOR = B.ID_FORNECEDOR'); // add sql

  case cb_chave_pesquisa.ItemIndex of

    0:begin
      Q_pesq_padrao.SQL.Add(' WHERE A.ID_PRODUTO =:PID_PRODUTO');
      Q_pesq_padrao.ParamByName('PID_PRODUTO').AsString := ed_nome.Text;
    end;

    1:begin
      Q_pesq_padrao.SQL.Add('WHERE A.PRODUTO_DESCRICAO LIKE :PPRODUTO_DESCRICAO');
      Q_pesq_padrao.ParamByName('PPRODUTO_DESCRICAO').AsString := '%' + ed_nome.Text + '%';
    end;

    2:begin
      Q_pesq_padrao.SQL.Add('WHERE B.NOME LIKE :PNOME ');
      Q_pesq_padrao.ParamByName('PNOME').AsString := '%' + ed_nome.Text + '%';
    end;


    3:begin
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO =:PCADASTRO');
      Q_pesq_padrao.ParamByName('PCADASTRO').AsDate := strTodate(mk_inicio.Text);
    end;

    4:begin
      Q_pesq_padrao.SQL.Add('WHERE A A.CADASTRO BETWEEN :PINICIO AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICiO').AsDate := strTodate(mk_inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM').AsDate := strTodate(mk_fim.Text);
    end;

    5:begin
       Q_pesq_padrao.SQL.Add('ORDER BY A.ID_PRODUTO');
    end;

  end;

  Q_pesq_padrao.Open;

  if Q_pesq_padrao.IsEmpty then
    begin
      Messagedlg('Nenhum Registro Encontrado!', MtInformation, [mbOk], 0);
    end
    else
    abort


end;

procedure Tfrm_pesq_prod.cb_chave_pesquisaChange(Sender: TObject);
begin
  case cb_chave_pesquisa.ItemIndex of

      0:begin
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op��es de Pesquisa';
        ed_nome.Visible := true;
        ed_nome.SetFocus;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := false;
        lb_desc.Visible := true;
        lb_desc.Caption := 'Digite o C�digo';
        ed_nome.Clear
      end;

      1:begin //Nome
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op��es de Pesquisa';
        ed_nome.Visible := true;
        ed_nome.SetFocus;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := false;
        lb_desc.Visible := true;
        lb_desc.Caption := 'Digite o Descri��o';
        ed_nome.Clear
      end;

      2:begin  //Fornecedor
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op��es de Pesquisa';
        ed_nome.Visible := true;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o Fornecedor';
        ed_nome.SetFocus;
        lb_desc.Visible := false;
        ed_nome.Clear
      end;



      3:begin  //Data Cadastro
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op��es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := true;
        mk_fim.Visible := false;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite a Data de Cadastro';
        mk_inicio.SetFocus;
        lb_desc.Visible := false;
        mk_inicio.Clear;
      end;

      4:begin  //Periodo
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op��es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := true;
        mk_fim.Visible := true;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o Per�odo';
        lb_desc.Visible := false;
        mk_inicio.SetFocus;
        mk_inicio.Clear;
        mk_fim.Clear;
      end;

       5:begin
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op��es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := false;
        lb_inicio.Caption := 'Digite o Per�odo';
        lb_desc.Visible := false;
        bt_buscar.SetFocus;
      end;

    end

end;

procedure Tfrm_pesq_prod.FormActivate(Sender: TObject);
begin
  Q_pesq_padrao.Close; // fecha
  Q_pesq_padrao.SQL.Add(''); // limpa
  Q_pesq_padrao.Params.Clear;  //limpa os parametros
  Q_pesq_padrao.SQL.Clear;  // limpa o sql
  Q_pesq_padrao.SQL.Add('SELECT A.ID_PRODUTO, '
                        + 'A.PRODUTO_DESCRICAO, '
                        + 'A.VL_CUSTO, '
                        + 'A.VL_VENDA, '
                        + 'A.ESTOQUE, '
                        + 'A.ESTOQUE_MIN, '
                        + 'A.CADASTRO, '
                        + 'A.ID_FORNECEDOR, '
                        + 'B.NOME FROM PRODUTO A,'
                        + 'FORNECEDOR B '
                        + 'WHERE  A.ID_FORNECEDOR = B.ID_FORNECEDOR '
                        + 'ORDER BY A.ID_PRODUTO'); // add sql
  Q_pesq_padrao.Open;

end;

end.
