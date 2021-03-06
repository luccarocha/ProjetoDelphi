unit U_pesq_forne;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_pesq_client, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  Tfrm_pesq_forne = class(Tfrm_pesq_client)
    q_pesq_padraoID_FORNECEDOR: TIntegerField;
    q_pesq_padraoCNPJ: TStringField;
    q_pesq_padraoPAIS: TStringField;
    DBGrid2: TDBGrid;
    ds_pesq_forne: TDataSource;
    Q_pesq_forne: TFDQuery;
    Q_pesq_forneID_FORNECEDOR: TIntegerField;
    Q_pesq_forneNOME: TStringField;
    Q_pesq_forneENDERECO: TStringField;
    Q_pesq_forneNUMERO: TIntegerField;
    Q_pesq_forneBAIRRO: TStringField;
    Q_pesq_forneCIDADE: TStringField;
    Q_pesq_forneUF: TStringField;
    Q_pesq_forneCEP: TStringField;
    Q_pesq_forneTELEFONE: TStringField;
    Q_pesq_forneCNPJ: TStringField;
    Q_pesq_forneEMAIL: TStringField;
    Q_pesq_forneCADASTRO: TDateField;
    Q_pesq_fornePAIS: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
    procedure bt_cadastrarClick(Sender: TObject);
    procedure ExibeTelaCadastroFornecedor();
    procedure bt_buscarClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pesq_forne: Tfrm_pesq_forne;

implementation

{$R *.dfm}

uses U_fornecedor;

procedure Tfrm_pesq_forne.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if Q_pesq_forne.RecordCount > 0 then
    begin
      codigo := Q_pesq_forneID_FORNECEDOR.AsInteger;
    end
  else
  abort;

end;

procedure Tfrm_pesq_forne.BitBtn2Click(Sender: TObject);
var caminho: string;
begin
  //abre rel?t?rio
   caminho := ExtractFilepath(Application.ExeName);
   if Frm_pesq_forne.rel_pesq_padrao.LoadFromFile(caminho + 'rel_fornecedor.fr3') then
      begin
        rel_pesq_padrao.clear;
        rel_pesq_padrao.LoadFromFile(ExtractFilepath(Application.ExeName) + 'rel_fornecedor.fr3');
        rel_pesq_padrao.PrepareReport(true);
        rel_pesq_padrao.ShowPreparedReport;
      end
      else
      Messagedlg('Rel?rio n?o localizado!', mtError, [mbOk], 0);
end;

procedure Tfrm_pesq_forne.bt_atualizarClick(Sender: TObject);
begin
  Q_pesq_forne.Refresh;
  Messagedlg('Registros atualizados!', mtInformation, [mbOk], 0);
end;

procedure Tfrm_pesq_forne.bt_buscarClick(Sender: TObject);
begin
  Q_pesq_forne.Close; // fecha
  Q_pesq_forne.SQL.Add(''); // limpa
  Q_pesq_forne.Params.Clear;  //limpa os parametros
  Q_pesq_forne.SQL.Clear;  // limpa o sql
  Q_pesq_forne.SQL.Add('SELECT ID_FORNECEDOR,NOME,ENDERECO,NUMERO,BAIRRO,CIDADE,UF,TELEFONE,CNPJ,CEP,EMAIL,CADASTRO,PAIS FROM FORNECEDOR'); // add sql

  case cb_chave_pesquisa.ItemIndex of

    0:begin
      Q_pesq_forne.SQL.Add('WHERE ID_FORNECEDOR =:PID_FORNECEDOR ');
      Q_pesq_forne.ParamByName('PID_FORNECEDOR').AsString := ed_nome.Text;
    end;

    1:begin
      Q_pesq_forne.SQL.Add('WHERE NOME LIKE :PNOME ');
      Q_pesq_forne.ParamByName('PNOME').AsString := '%' + ed_nome.Text + '%';
    end;

    2:begin
      Q_pesq_forne.SQL.Add('WHERE ENDERECO LIKE :PENDERECO ');
      Q_pesq_forne.ParamByName('PENDERECO').AsString := '%' + ed_nome.Text + '%';
    end;

    3:begin
      Q_pesq_forne.SQL.Add('WHERE BAIRRO LIKE :PBAIRRO ');
      Q_pesq_forne.ParamByName('PBAIRRO').AsString := '%' + ed_nome.Text + '%';
    end;

    4:begin
      Q_pesq_forne.SQL.Add('WHERE CIDADE LIKE :PCIDADE ');
      Q_pesq_forne.ParamByName('PCIDADE').AsString := '%' + ed_nome.Text + '%';
    end;

    5:begin
      Q_pesq_forne.SQL.Add('WHERE UF LIKE :PUF ');
      Q_pesq_forne.ParamByName('PUF').AsString := '%' + ed_nome.Text + '%';
    end;

    6:begin
      Q_pesq_forne.SQL.Add('WHERE CEP =:PCEP ');
      Q_pesq_forne.ParamByName('PCEP').AsString := mk_cep.Text;
    end;

    7:begin
      Q_pesq_forne.SQL.Add('WHERE CNPJ =:PCNPJ ');
      Q_pesq_forne.ParamByName('PCNPJ').AsString := mk_cpf.Text;
    end;

    8:begin
      Q_pesq_forne.SQL.Add('WHERE PAIS LIKE :PPAIS ');
      Q_pesq_forne.ParamByName('PPAIS').AsString := '%' + ed_nome.Text + '%';
    end;


    9:begin
      Q_pesq_forne.SQL.Add('WHERE CADASTRO =:PCADASTRO ');
      Q_pesq_forne.ParamByName('PCADASTRO').AsDate := strTodate(mk_inicio.Text);
    end;

    10:begin
      Q_pesq_forne.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
      Q_pesq_forne.ParamByName('PINICiO').AsDate := strTodate(mk_inicio.Text);
      Q_pesq_forne.ParamByName('PFIM').AsDate := strTodate(mk_fim.Text);
    end;

    11:begin
       Q_pesq_forne.SQL.Add('ORDER BY ID_FORNECEDOR');
    end;


  end;

  //Q_pesq_forne.SQL.Add('WHERE ID_USUARIO=:PID_USUARIO');
  //Q_pesq_forne.ParamByName('PID_USUARIO').AsString := ed_nome.Text;
  Q_pesq_forne.Open;

  if Q_pesq_forne.IsEmpty then
    begin
      Messagedlg('Nenhum Registro Encontrado!', MtInformation, [mbOk], 0);
    end
    else
    abort

end;

procedure Tfrm_pesq_forne.bt_cadastrarClick(Sender: TObject);
begin
  ExibeTelaCadastroFornecedor;
end;

procedure Tfrm_pesq_forne.cb_chave_pesquisaChange(Sender: TObject);
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
        ed_nome.Clear
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
        ed_nome.Clear;
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
        ed_nome.Clear;

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
        ed_nome.Clear;
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
        ed_nome.Clear;
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
        ed_nome.Clear;
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
        mk_cep.Clear;
      end;

      7:begin  //CPF
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o CNPJ';
        mk_cpf.Visible := true;
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        mk_cpf.SetFocus;
        lb_desc.Visible := false;
        mk_cep.Visible := false;
        mk_cpf.Clear;

      end;

      8:begin  //UF
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := true;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o Pa?s';
        ed_nome.SetFocus;
        lb_desc.Visible := false;
        mk_cep.Visible := false;
        mk_cpf.Visible := false;
        ed_nome.Clear;
      end;


      9:begin  //Data Cadastro
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
        mk_inicio.Clear;
      end;

      10:begin  //Periodo
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
        mk_inicio.Clear;
        mk_fim.Clear;
      end;

       11:begin
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

procedure Tfrm_pesq_forne.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  bt_transferir.Click;
end;

procedure Tfrm_pesq_forne.ExibeTelaCadastroFornecedor;
begin
  frm_fornecedor := Tfrm_fornecedor.Create(self);
  Frm_fornecedor.ShowModal;
  try

  finally
    frm_fornecedor.Free;
    frm_fornecedor := nil;
  end;
end;

procedure Tfrm_pesq_forne.FormActivate(Sender: TObject);
begin
  Q_pesq_forne.Close; // fecha
  Q_pesq_forne.SQL.Add(''); // limpa
  Q_pesq_forne.Params.Clear;  //limpa os parametros
  Q_pesq_forne.SQL.Clear;  // limpa o sql
  Q_pesq_forne.SQL.Add('SELECT * FROM FORNECEDOR ORDER BY ID_FORNECEDOR'); // add sql
  Q_pesq_forne.Open;
end;

end.
