unit U_Formpadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage;

type
  Tfrm_padrao = class(TForm)
    Panel1: TPanel;
    bt_pesquisar: TBitBtn;
    bt_atualizar: TBitBtn;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    Q_padrao: TFDQuery;
    ds_padrao: TDataSource;
    painel0: TPanel;
    Panel2: TPanel;
    bt_novo: TBitBtn;
    bt_deletar: TBitBtn;
    bt_alterar: TBitBtn;
    bt_gravar: TBitBtn;
    SpeedButton10: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt_novoClick(Sender: TObject);
    procedure bt_deletarClick(Sender: TObject);
    procedure bt_alterarClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
    procedure Tratabotoes();
    procedure SpeedButton10Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_padrao: Tfrm_padrao;

implementation

{$R *.dfm}

uses U_DM, U_Principal;

procedure Tfrm_padrao.BitBtn1Click(Sender: TObject);
begin
  //Cancela a opera??o
  Tratabotoes;
  Q_padrao.Cancel;
  Messagedlg('A??o cancelada pelo usu?rio!', mtInformation, [mbOk], 0);
end;

procedure Tfrm_padrao.bt_alterarClick(Sender: TObject);
begin
  //Possibilita a edi??o
  Tratabotoes;
  if messagedlg('Deseja editar esse registro?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      Q_padrao.edit;
    end
    else
    Tratabotoes;
    abort;
end;

procedure Tfrm_padrao.bt_atualizarClick(Sender: TObject);
begin
  //Atualiza o registro
  Tratabotoes;
  Q_padrao.Refresh;
  Messagedlg('Registro atualizado com sucesso!', mtInformation, [mbOk], 0);
end;

procedure Tfrm_padrao.bt_deletarClick(Sender: TObject);
begin
  //Exclui o registro
  Tratabotoes;
  if messagedlg('Deseja excluir esse registro?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      Q_padrao.delete;
      Messagedlg('Registro deletado com sucesso!', mtInformation, [mbOk], 0);
      Tratabotoes;
    end
    else
    Tratabotoes;
    abort;
end;

procedure Tfrm_padrao.bt_gravarClick(Sender: TObject);
begin
  //Salva o registro
  Tratabotoes;
  Q_padrao.Post;
  Messagedlg('Registro salvo com sucesso!', mtInformation, [mbOk], 0);
end;

procedure Tfrm_padrao.bt_novoClick(Sender: TObject);
begin
  // Cria um novo registro
  q_padrao.open;
  Tratabotoes;
  q_padrao.Append;
end;

procedure Tfrm_padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Faz o enter ter a mesma fun??o do tab
  if key = #13 then

    begin
       Key := #0;
       Perform(wm_nextDlgCtl,0,0);
    end;
end;

procedure Tfrm_padrao.SpeedButton10Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_padrao.Tratabotoes;
begin
  //Habilita e desabilita  os bot?es
  bt_novo.Enabled :=  not bt_novo.Enabled;
  bt_deletar.Enabled := not bt_deletar.Enabled;
  bt_alterar.Enabled := not bt_alterar.Enabled;
  bt_gravar.Enabled := not bt_gravar.Enabled;
  bt_atualizar.Enabled := not bt_atualizar.Enabled;
end;

end.
