unit U_pesq_venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_formpesquisapadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  Tfrm_pesquisavenda = class(Tfrm_pesquisapadrao)
    Label2: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    DBText2: TDBText;
    q_pesq_padraoID_VENDA: TIntegerField;
    q_pesq_padraoID_CLIENTE: TIntegerField;
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoID_FORMA_PGTO: TIntegerField;
    q_pesq_padraoDESCRICAO: TStringField;
    q_pesq_padraoUSUARIO: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    q_pesq_padraoCOND_PGTO: TIntegerField;
    q_pesq_padraoVALOR: TFMTBCDField;
    q_pesq_padraoQUANTIDADE: TAggregateField;
    q_pesq_padraoVALORTOTAL: TAggregateField;
    procedure bt_buscarClick(Sender: TObject);
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure bt_transferirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cb_chave_pesquisaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pesquisavenda: Tfrm_pesquisavenda;

implementation

{$R *.dfm}

uses U_vendas;

procedure Tfrm_pesquisavenda.bt_buscarClick(Sender: TObject);
begin
  Q_pesq_padrao.Close; // fecha
  Q_pesq_padrao.SQL.Add(''); // limpa
  Q_pesq_padrao.Params.Clear;  //limpa os parametros
  Q_pesq_padrao.SQL.Clear;  // limpa o sql
  Q_pesq_padrao.SQL.Add('SELECT A.ID_VENDA, '
                        + 'A.ID_CLIENTE, '
                        + 'B.NOME, '
                        + 'A.ID_FORMA_PGTO, '
                        + 'C.DESCRICAO, '
                        + 'A.USUARIO, '
                        + 'A.VALOR, '
                        + 'A.CADASTRO,  '
                        + 'A.COND_PGTO '
                        + 'FROM VENDA A '
                        + 'INNER JOIN CLIENTE B ON A.ID_CLIENTE = B.ID_CLIENTE '
                        + 'INNER JOIN FORMA_PGTO C ON A.ID_FORMA_PGTO = C.ID_FORMA_PGTO '
                        +'ORDER BY ID_VENDA DESC'); // add sql

  case cb_chave_pesquisa.ItemIndex of

    0:begin
      Q_pesq_padrao.SQL.Add(' WHERE A.ID_VENDA =:PID_VENDA');
      Q_pesq_padrao.ParamByName('PID_VENDA').AsString := ed_nome.Text;
    end;

    1:begin
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO =:PCADASTRO');
      Q_pesq_padrao.ParamByName('PCADASTRO').AsDate := strTodate(mk_inicio.Text);
    end;

    2:begin
      Q_pesq_padrao.SQL.Add('WHERE B.NOME LIKE :PNOME ');
      Q_pesq_padrao.ParamByName('PNOME').AsString := '%' + ed_nome.Text + '%';
    end;


    3:begin
      Q_pesq_padrao.SQL.Add('WHERE C.DESCRICAO LIKE :PDESCRICAO ');
      Q_pesq_padrao.ParamByName('PDESCRICAO').AsString := '%' + ed_nome.Text + '%';
    end;

    4:begin
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO BETWEEN :PINICIO AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICiO').AsDate := strTodate(mk_inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM').AsDate := strTodate(mk_fim.Text);
    end;

    5:begin
      Q_pesq_padrao.SQL.Add('WHERE A.USUARIO LIKE :PUSUARIO ');
      Q_pesq_padrao.ParamByName('PUSUARIO').AsString := '%' + ed_nome.Text + '%';
    end;

    6:begin
       Q_pesq_padrao.SQL.Add('ORDER BY A.ID_VENDA');
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

procedure Tfrm_pesquisavenda.bt_transferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
    begin
      codigo := q_pesq_padraoID_VENDA.AsInteger;
      frm_vendas.Q_contasreceber.Open;
    end
  else
  abort;

end;

procedure Tfrm_pesquisavenda.cb_chave_pesquisaChange(Sender: TObject);
begin
  case cb_chave_pesquisa.ItemIndex of

      0:begin
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := true;
        ed_nome.SetFocus;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := false;
        lb_desc.Visible := true;
        lb_desc.Caption := 'Digite o C?digo da Compra';
        ed_nome.Clear
      end;

      1:begin  //Data Cadastro
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := true;
        mk_fim.Visible := false;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite a Data de Compra';
        mk_inicio.SetFocus;
        lb_desc.Visible := false;
        mk_inicio.Clear;
      end;

      2:begin //Fornecedor
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := true;
        ed_nome.SetFocus;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := false;
        lb_desc.Visible := true;
        lb_desc.Caption := 'Digite o Cliete';
        ed_nome.Clear
      end;

      3:begin  //Forma de Pagamento
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := true;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite a Forma de Pagamento';
        ed_nome.SetFocus;
        lb_desc.Visible := false;
        ed_nome.Clear
      end;

      4:begin  //Periodo
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := true;
        mk_fim.Visible := true;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o Per?odo';
        lb_desc.Visible := false;
        mk_inicio.SetFocus;
        mk_inicio.Clear;
        mk_fim.Clear;
      end;


      5:begin  //usuario
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := true;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o Usu?rio';
        ed_nome.SetFocus;
        lb_desc.Visible := false;
        ed_nome.Clear
      end;


      6:begin
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := false;
        lb_inicio.Caption := 'Digite o Per?odo';
        lb_desc.Visible := false;
        bt_buscar.SetFocus;
      end;

    end

end;

procedure Tfrm_pesquisavenda.cb_chave_pesquisaClick(Sender: TObject);
begin
  bt_buscar.Visible := true;

end;

procedure Tfrm_pesquisavenda.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  bt_transferir.Click;

end;

procedure Tfrm_pesquisavenda.FormActivate(Sender: TObject);
begin
  Q_pesq_padrao.Close; // fecha
  Q_pesq_padrao.SQL.Add(''); // limpa
  Q_pesq_padrao.Params.Clear;  //limpa os parametros
  Q_pesq_padrao.SQL.Clear;  // limpa o sql
  Q_pesq_padrao.SQL.Add('SELECT A.ID_VENDA, '
                        + 'A.ID_CLIENTE, '
                        + 'B.NOME, '
                        + 'A.ID_FORMA_PGTO, '
                        + 'C.DESCRICAO, '
                        + 'A.USUARIO, '
                        + 'A.VALOR, '
                        + 'A.CADASTRO,  '
                        + 'A.COND_PGTO '
                        + 'FROM VENDA A '
                        + 'INNER JOIN CLIENTE B ON A.ID_CLIENTE = B.ID_CLIENTE '
                        + 'INNER JOIN FORMA_PGTO C ON A.ID_FORMA_PGTO = C.ID_FORMA_PGTO'); // add sql
  Q_pesq_padrao.Open;
end;

end.
