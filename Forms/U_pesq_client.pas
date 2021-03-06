unit U_pesq_client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_formpesquisapadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  Tfrm_pesq_client = class(Tfrm_pesquisapadrao)
    bt_cadastrar: TBitBtn;
    bt_atualizar: TBitBtn;
    q_pesq_padraoID_CLIENTE: TIntegerField;
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoENDERECO: TStringField;
    q_pesq_padraoNUMERO: TIntegerField;
    q_pesq_padraoBAIRRO: TStringField;
    q_pesq_padraoCIDADE: TStringField;
    q_pesq_padraoUF: TStringField;
    q_pesq_padraoCEP: TStringField;
    q_pesq_padraoTELEFONE: TStringField;
    q_pesq_padraoCPF: TStringField;
    q_pesq_padraoEMAIL: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    mk_cep: TMaskEdit;
    mk_cpf: TMaskEdit;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
    procedure bt_cadastrarClick(Sender: TObject);
    procedure ExibeTelaCadastroCliente();
    procedure bt_buscarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pesq_client: Tfrm_pesq_client;

implementation

{$R *.dfm}

uses U_clientes, U_Principal;

procedure Tfrm_pesq_client.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
    begin
      codigo := Q_pesq_padraoID_CLIENTE.AsInteger;
    end
  else
  abort;

end;

procedure Tfrm_pesq_client.BitBtn2Click(Sender: TObject);
  var caminho: string;

begin
  //abre rel?t?rio
   caminho := ExtractFilepath(Application.ExeName);
   if Frm_pesq_client.rel_pesq_padrao.LoadFromFile(caminho + 'rel_cliente.fr3') then
      begin
        rel_pesq_padrao.clear;
        rel_pesq_padrao.LoadFromFile(ExtractFilepath(Application.ExeName) + 'rel_cliente.fr3');
        rel_pesq_padrao.PrepareReport(true);
        rel_pesq_padrao.ShowPreparedReport;
      end
      else
      Messagedlg('Rel?rio n?o localizado!', mtError, [mbOk], 0);

end;

procedure Tfrm_pesq_client.bt_atualizarClick(Sender: TObject);
begin
  Q_pesq_padrao.Refresh;
  Messagedlg('Registros atualizados!', mtInformation, [mbOk], 0);

end;

procedure Tfrm_pesq_client.bt_buscarClick(Sender: TObject);
begin
  Q_pesq_padrao.Close; // fecha
  Q_pesq_padrao.SQL.Add(''); // limpa
  Q_pesq_padrao.Params.Clear;  //limpa os parametros
  Q_pesq_padrao.SQL.Clear;  // limpa o sql
  Q_pesq_padrao.SQL.Add('SELECT ID_CLIENTE,NOME,ENDERECO,NUMERO,BAIRRO,CIDADE,UF,TELEFONE,CPF,CEP,EMAIL,CADASTRO FROM CLIENTE'); // add sql

  case cb_chave_pesquisa.ItemIndex of

    0:begin
      Q_pesq_padrao.SQL.Add('WHERE ID_CLIENTE =:PID_CLIENTE ');
      Q_pesq_padrao.ParamByName('PID_CLIENTE').AsString := ed_nome.Text;
    end;

    1:begin
      Q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME ');
      Q_pesq_padrao.ParamByName('PNOME').AsString := '%' + ed_nome.Text + '%';
    end;

    2:begin
      Q_pesq_padrao.SQL.Add('WHERE ENDERECO LIKE :PENDERECO ');
      Q_pesq_padrao.ParamByName('PENDERECO').AsString := '%' + ed_nome.Text + '%';
    end;

    3:begin
      Q_pesq_padrao.SQL.Add('WHERE BAIRRO LIKE :PBAIRRO ');
      Q_pesq_padrao.ParamByName('PBAIRRO').AsString := '%' + ed_nome.Text + '%';
    end;

    4:begin
      Q_pesq_padrao.SQL.Add('WHERE CIDADE LIKE :PCIDADE ');
      Q_pesq_padrao.ParamByName('PCIDADE').AsString := '%' + ed_nome.Text + '%';
    end;

    5:begin
      Q_pesq_padrao.SQL.Add('WHERE UF LIKE :PUF ');
      Q_pesq_padrao.ParamByName('PUF').AsString := '%' + ed_nome.Text + '%';
    end;

    6:begin
      Q_pesq_padrao.SQL.Add('WHERE CEP =:PCEP ');
      Q_pesq_padrao.ParamByName('PCEP').AsString := mk_cep.Text;
    end;

    7:begin
      Q_pesq_padrao.SQL.Add('WHERE CPF =:PCPF ');
      Q_pesq_padrao.ParamByName('PCPF').AsString := mk_cpf.Text;
    end;

    8:begin
      Q_pesq_padrao.SQL.Add('WHERE CADASTRO =:PCADASTRO ');
      Q_pesq_padrao.ParamByName('PCADASTRO').AsDate := strTodate(mk_inicio.Text);
    end;

    9:begin
      Q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICiO').AsDate := strTodate(mk_inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM').AsDate := strTodate(mk_fim.Text);
    end;

    10:begin
       Q_pesq_padrao.SQL.Add('ORDER BY ID_CLIENTE');
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

procedure Tfrm_pesq_client.bt_cadastrarClick(Sender: TObject);
begin
  ExibeTelaCadastroCliente;
end;

procedure Tfrm_pesq_client.cb_chave_pesquisaChange(Sender: TObject);
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
        lb_desc.Caption := 'Digite o C?digo';
        mk_cep.Visible := false;
        mk_cpf.Visible := false;
      end;

      1:begin //Nome
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := true;
        ed_nome.SetFocus;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := false;
        lb_desc.Visible := true;
        lb_desc.Caption := 'Digite o Nome';
        mk_cep.Visible := false;
        mk_cpf.Visible := false;
      end;

      2:begin  //Logradouro
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := true;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o Logradouro';
        ed_nome.SetFocus;
        lb_desc.Visible := false;
        mk_cep.Visible := false;
        mk_cpf.Visible := false;
      end;

      3:begin  //Bairro
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := true;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o Bairro';
        ed_nome.SetFocus;
        lb_desc.Visible := false;
        mk_cep.Visible := false;
        mk_cpf.Visible := false;
      end;

      4:begin  //Cidade
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := true;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite a Cidade';
        ed_nome.SetFocus;
        lb_desc.Visible := false;
        mk_cep.Visible := false;
        mk_cpf.Visible := false;
      end;

      5:begin  //UF
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := true;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o Estado';
        ed_nome.SetFocus;
        lb_desc.Visible := false;
        mk_cep.Visible := false;
        mk_cpf.Visible := false;
      end;

      6:begin  //CEP

        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o CEP';
        mk_cep.Visible := true;
        mk_cep.SetFocus;
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_desc.Visible := false;

        mk_cpf.Visible := false;
      end;

      7:begin  //CPF
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o CPF';
        mk_cpf.Visible := true;
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        mk_cpf.SetFocus;
        lb_desc.Visible := false;
        mk_cep.Visible := false;

      end;


      8:begin  //Data Cadastro
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := true;
        mk_fim.Visible := false;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite a Data de Cadastro';
        mk_inicio.SetFocus;
        lb_desc.Visible := false;
        mk_cep.Visible := false;
        mk_cpf.Visible := false;
      end;

      9:begin  //Periodo
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := true;
        mk_fim.Visible := true;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o Per?odo';
        lb_desc.Visible := false;
        mk_inicio.SetFocus;
        mk_cep.Visible := false;
        mk_cpf.Visible := false;
        mk_cep.Visible := false;
      end;

       10:begin
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := false;
        lb_inicio.Caption := 'Digite o Per?odo';
        lb_desc.Visible := false;
        bt_buscar.SetFocus;
        mk_cep.Visible := false;
        mk_cpf.Visible := false;
      end;
    end

end;

procedure Tfrm_pesq_client.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  bt_transferir.Click;

end;

procedure Tfrm_pesq_client.ExibeTelaCadastroCliente;
begin
  frm_clientes := Tfrm_clientes.Create(self);
  Frm_clientes.ShowModal;

  try


  finally
    frm_clientes.Free;
    frm_clientes := nil;
  end;

  end;

procedure Tfrm_pesq_client.FormActivate(Sender: TObject);
begin
  Q_pesq_padrao.Close; // fecha
  Q_pesq_padrao.SQL.Add(''); // limpa
  Q_pesq_padrao.Params.Clear;  //limpa os parametros
  Q_pesq_padrao.SQL.Clear;  // limpa o sql
  Q_pesq_padrao.SQL.Add('SELECT * FROM CLIENTE ORDER BY ID_CLIENTE'); // add sql
  Q_pesq_padrao.Open;

end;

end.
